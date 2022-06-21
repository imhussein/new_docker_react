function App({ name }) {
  return (
    <div className="App" style={{ fontFamily: "Operator Mono" }}>
      <h1>React Component</h1>
    </div>
  );
}

export default function Main() {
  return <App name="App From ReactTS" />;
}
