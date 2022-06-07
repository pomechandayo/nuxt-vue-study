<template>
  <el-container>
    <el-header>{{ title }}</el-header><hr>
    <div class="right">
      <p v-html="message">no message</p>
      <router-link to="/">Go to Top</router-link>
    </div>
  </el-container>
</template>

<script>

export default {
  data: function() {
    return {
      title: 'Login'
    };
  },
  computed: {
    message: function() {
      let id = this.$route.params.id != undefined ? this.$route.params.id : '*** no id***';
      let pass = this.$route.params.pass != undefined ? this.$route.params.pass : '*** no password***';
      return 'ID:' + id + '<br>PASS:' + pass;    
      }
  }
}
</script>
