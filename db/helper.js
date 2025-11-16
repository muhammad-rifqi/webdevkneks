const { executeQuery } = require('./postgres');

async function getProvinceName(id) {
    try {
        const result = await executeQuery(
            "SELECT name FROM provinces WHERE id = ? LIMIT 1",
            [id]
        );

        if (result.length > 0) {
            return result[0].name;
        }

        return null;

    } catch (error) {
        console.error("Province lookup error:", error);
        return null;
    }
}

module.exports = { getProvinceName };
