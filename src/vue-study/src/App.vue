<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png">
    <HelloWorld title="slot">
      <li
        v-for="obj in slotobjs"
        v-bind:key="obj.name"
      >
      {{ obj.name }} {{ obj.mail }}

      </li>
    </HelloWorld>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'

export default {
  name: 'App',
  components: {
    HelloWorld,
  },
  data: function() {
    return {
      title: 'Vue Study',
      slotobjs: [
        {name: 'Taro', mail:'taro@yamada'},
        {name: 'Hanako', mail:'hanako@yamada'},
        {name: 'Sachiko', mail:'sachiko@yamada'},
      ]
    }
  },
  methods:{
    appAction: function() {
      this.result = `( you send:)`;
      console.log('test1000');
      let test2000 = `function f() {
        "test2000";
      } f();`;
      console.log(eval(test2000));
      }
  },
  created: function() {
    localStorage.setItem('myCat','Tom');
    console.log(localStorage.getItem('myCat'));
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
