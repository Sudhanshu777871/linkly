const express = require("express");
const router = express.Router();
const { handelNewUrl, handelURLRedirect, handelURLHistory } = require("../contollers/index");
// making separate router

// making route for adding new url
router.post("/", handelNewUrl)

// making api for getting the getting the originla url
router.get("/:shortId", handelURLRedirect)


// making api for getting the history of api
router.post("/history", handelURLHistory);

// exporting them
module.exports = router;