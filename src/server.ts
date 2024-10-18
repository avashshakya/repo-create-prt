import express, { Request, Response } from "express";

const app = express();
const port = 8000;

app.get("/server-health", (_req: Request, res: Response) => {
  res.json({ value: "api is working" });
});

app.get("/new", (_req: Request, res: Response) => {
  res.json({ value: "New features coming soon!!!" });
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
