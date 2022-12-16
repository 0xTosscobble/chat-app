import consumer from "channels/consumer"

consumer.subscriptions.create( {channel: "MessagesChannel"}, {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("lick my balls")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    // this.appendLine(data)
    alert(data.content)
    console.log("got it")
  },

  // appendLine(data) {
  //   const html = this.createLine(data)
  //   const element = document.querySelector("[data-chat-room='Best Room']")
  //   element.insertAdjacentHTML("beforeend", html)
  //   console.log("found your code bitch")
  // },

  // createLine(data) {
  //   return `
  //     <li class="flex justify-start">
  //     <div class="relative max-w-xl px-4 py-2 text-gray-700 rounded shadow">
  //     <span class="block"> ${data["content"]} </span>
  //     </div>
  //     </li>
  //   `
  // }
});
