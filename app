function display(data, callback) {
  const error = Math.random() > 0.5 ? new Error("Ошибка: случайное число > 5") : null;
  setTimeout(() => {
    callback(error, data);
  }, 0);
}

display("Первый асинхронный вызов", (err, result) => {
  if (err) {
    console.error(err.message);
  } else {
    console.log("Результат 1:", result);
  }
});

display("Второй асинхронный вызов", (err, result) => {
  if (err) {
    console.error(err.message);
  } else {
    console.log("Результат 2:", result);
  }
});

console.log("Синхронный код завершён");
console.log("Ожидание выполнения колбеков из очереди...");
