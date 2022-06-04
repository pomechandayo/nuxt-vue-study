<template>
  <div>
    <h1>{{ title }}</h1>
    <p>{{ message }}</p>
    <ol>
      <slot />
    </ol>

  </div>
</template>

<script>
export default {
  name: "HelloWorld",
  props: {
    title: String,
  },
  data: function () {
    return {
      message: "This is message",
    };
  },

  methods: {

  },
  computed: {
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
pre {
  font-size: 14pt;
  line-height: 1.25;
}
div.out {
  padding: 5px 0px;
  background-color: #eee;
  width: 300px;
  height: 200px;
}
div.mid {
  padding: 5px 0px;
  background-color: #ddd;
  width: 200px;
  height: 175px;
}
div.in {
  padding: 5px 0px;
  background-color: #ccc;
  width: 100px;
  height: 150px;
}
</style>
