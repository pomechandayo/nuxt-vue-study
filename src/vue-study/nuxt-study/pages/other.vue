<template>
  <el-container>
    <el-header>{{ title }}</el-header>
    <p>{{ message }}</p>
    <hr>
    <el-input 
      v-model="text"
    />
    <el-button type="primary" icon="el-icon-edit">
    <router-link to="/">Go To Top</router-link>
    </el-button>
  </el-container>
</template>

<script>
export default {
  data: function() {
    return {
      title: 'Other',
      message: 'これは、別のページです。',
      text: ''
    }
  }
}
</script>

<style>
</style>