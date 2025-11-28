<template>
  <div id="app">
    <LoginForm />
    <TaskIndex />
    <SignUpForm />
  </div>
</template>

<script>
import LoginForm from '@/components/LoginForm.vue'
import TaskIndex from '@/components/TaskIndex.vue'
import SignUpForm from './components/SignUpForm.vue';

export default {
  name: 'App',
  components: {
    LoginForm,
    TaskIndex,
    SignUpForm
  }
}
</script>
