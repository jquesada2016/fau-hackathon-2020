import React from "react";
import { CssBaseline, Card, Typography } from "@material-ui/core";
import { makeStyles } from "@material-ui/core/styles";
import QRReader from "react-qr-reader";

const useStyles = makeStyles({
  root: {
    minWidth: 275,
    maxWidth: "80vw",
    margin: "auto"
  }
});

const App = () => {
  const [state, setState] = React.useState();
  const classes = useStyles();

  const handleScan = (data: string | null) =>
    data ? (window.location.href = data) : null;

  const handleError = (error: any) => console.log(error);

  return (
    <CssBaseline>
      <>
        <Card className={classes.root}>
          <Typography variant="h1" align="center" gutterBottom>
            Scan QR code
          </Typography>
          <QRReader
            style={{ height: "50%", width: "auto" }}
            onScan={handleScan}
            onError={handleError}
          />
        </Card>
      </>
    </CssBaseline>
  );
};

export default App;
