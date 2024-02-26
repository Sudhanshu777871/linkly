const shortid = require('shortid');
const config = require("../config");

// making api for handling new URL
const handelNewUrl = async (req, res) => {
    if (req.body.originalURL) {
        const shortURLId = shortid.generate();
        const { originalURL } = req.body
        config.query("INSERT INTO data (Original_Url,Short_Url) VALUES (?,?)", [originalURL, shortURLId], (error) => {
            if (error) throw error
            // sending the response
            res.status(200).send({ result: `${req.headers.host}/${shortURLId}` });
            res.end();
        })
    }
    else {
        res.status(400).send("Please Send The URL...");
        res.end();
    }
}


// making api for handling redirecting URL
const handelURLRedirect = async (req, res) => {
    if (!req.params.shortId) {
        res.status(404).send({ message: "Page Not Found" });
    } else {
        // code for searching the data
        config.query("SELECT Original_Url FROM data WHERE Short_Url = ?", [req.params.shortId], (err, result) => {
            if (err) throw err;
            else {
                res.redirect(result[0].Original_Url);

                // code for inserting the history data
                config.query("INSERT INTO history (short_URL) VALUES (?)", [req.params.shortId], (error) => {
                    if (err) throw error

                })

            }
        })

    }
}


// making api for handling URL history
const handelURLHistory = async (req, res) => {
    if (!req.body.id) {
        res.status(404).send({ message: "Page Not Found" });
    } else {
        // code for searching the data
        config.query("SELECT * FROM history WHERE short_URL = ?", [req.body.id], (err, result) => {
            if (err) {
                res.status(500).send({ message: "Internal Server Error" });
                return;
            }

            if (result && result.length > 0) {

                res.status(200).send(result);
            } else {
                res.status(404).send(false);
            }
        });
    }
}
// exporing the module

module.exports = { handelNewUrl, handelURLRedirect, handelURLHistory }