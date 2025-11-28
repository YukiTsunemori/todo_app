<template>
  <div id="app">
    <LoginForm />
    <TaskIndex />
  </div>
</template>

<script>
import LoginForm from '@/components/LoginForm.vue'
import TaskIndex from '@/components/TaskIndex.vue'

export default {
  name: 'App',
  components: {
    LoginForm,
    TaskIndex
  }
}
</script>
