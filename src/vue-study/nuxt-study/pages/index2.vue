<template>
<section>
  <h1 >{{ title }}</h1>
  <p>{{ message }}</p>
  <p>{{ addNum }}</p>
  <p>{{ flg }}</p>
  <hr>
  <div>
  <el-button @click="doAction">
    doAction
  </el-button>
  <el-button @click="doAction1">
    doAction1
  </el-button>
  </div>
</section>
</template>

<script>
export default {
  data: function() {
    return {
      title: 'Hello',
      message: 'this is message.',
      num: 1,
      flg: 0,
    };
  },
  methods: {
    doAction: function() {
      this.num = this.num + 1;
    },
    doAction1: function() {
      console.log(this.flg);
      this.flg = this.flg === 1 ? 0 : 1;
    }
  },
  computed: {
    addNum: function() {
        return this.num = this.num + 10;
    }
  }
};
</script>