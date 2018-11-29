module.exports = {
    path: '/api/v1/health',
    template: {
        status: (params, query) => query.status,
    }
};