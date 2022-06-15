<template>
  <section class="container">
    <h1>{{ title }}</h1>
    <p>{{ message }}</p>
    <ul>
      <li>
        {{json_data}}
      </li>
    </ul>
    <el-button @click="getJsonData">
      Get json
    </el-button>
  </section>
</template>

<script>
const axios = require('axios');

let url = 'https://nuxt-study-test-default-rtdb.firebaseio.com/person.json';
export default {
  data: function() {
    return {
      title:'Axios',
      msg: '',
      message:'axios sample.',
      json_data: {},
      name: '',
      age: '',
    };
  },
  methods: {
    getJsonData: function() {
      axios.get(url).then( (res) => {
        console.log(5555);
        console.log(res.data);
        this.json_data = res.data;
      }).catch((error) =>{
        this.message = 'ERROR';
      });
    },
  }
  // async asyncData () {
  //   let id = 1;
  //   let result = await axios.get(url + id);
  //   console.log(result.data);
  //   return { json_data: [result.data] };
  // },
}
  function getHello(getName) {
      return 'こんにちは' + getName() + 'さん';
  }

  let helloHanako = getHello(() => "花子");
  let helloTaro = getHello(() => { return "太郎"});
  console.log(helloHanako);
  console.log(helloTaro);

</script>