const accessKeyId = "";
const secretAccessKey = "";
const authorization = "Basic " + Buffer.from(accessKeyId + ":" + secretAccessKey).toString("base64")

const option = {
  headers: [
    {
      name: "Authorization",
      value: authorization,
    },
    { name: "x-krn", value: "krn:1001:node" },
  ],
};

const Caver = require("caver-js");
const caver = new Caver(
  new Caver.providers.HttpProvider(
    "https://node-api.klaytnapi.com/v1/klaytn",
    option
  )
);

module.exports = {accessKeyId, secretAccessKey, authorization, caver}