class ResponseError extends Error {
    constructor(status, message) {
        super(message); // kirim pesan ke parent class (Error)
        this.status = status;
    }
}

export default ResponseError;