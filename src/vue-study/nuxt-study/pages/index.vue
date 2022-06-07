<template>
<section>
  <h1>{{ title }}</h1>
  <p>{{ $store.state.message }}</p>
  <hr>
  <div 
  @click="$store.dispatch('doit')"
  >
  <el-button>
    clicked: {{ $store.state.counter}}
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
      now: 'wait...'
    };
  },
  methods: {
  }
};
</script>
