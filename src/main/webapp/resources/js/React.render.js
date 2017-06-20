var renderClient = function (data) {
    React.render(
        <CommentBox data={data} url='comments.json' pollInterval={5000} />,
        document.getElementById("content")
    );
};