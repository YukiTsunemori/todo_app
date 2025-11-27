<script>
import railsApi from '../axios';
export default {
    data() {
        return {
            email: '',
            password: ''
        }
    },
    methods: {
        postSession() {
                railsApi.post('/users/sign_in', {
                    user: {
                        email: this.email,
                        password: this.password
                    }
                })
                .then(() => {
                    this.email = '',
                    this.password = ''
                })
                .catch((error) => {
                    console.error(error)
                })
        }
    }
}
</script>
<template>
<h1>ログイン</h1>
<div>
    <form @submit.prevent="postSession">
        <div>
            <label>Email: </label><input type="text" v-model="email" placeholder="Email" />
        </div>
        <div>
            <label>Password: </label><input type="password" v-model="password" placeholder="Password" />
        </div>
        <div>
            <button>ログイン</button>
        </div>
    </form>
</div>
</template>
