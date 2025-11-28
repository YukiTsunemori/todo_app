<script>
import railsApi from '../axios'
export default {
    data() {
        return {
            name: '',
            email: '',
            password: ''
        }
    },
    methods: {
        postRegistration() {
            railsApi.post('users', {
                user: {
                    name: this.name,
                    email: this.email,
                    password: this.password,
                }
            })
            .then(() => {
                this.name = '',
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
    <h2>サインアップ</h2>
    <div>
        <form @submit.prevent="postRegistration">
            <div>
                <label>Name: </label><input type="text" v-model="name" placeholder="Name" />
            </div>
            <div>
                <label>Email: </label><input type="text" v-model="email" placeholder="Email" />
            </div>
            <div>
                <label>Password: </label><input type="password" v-model="password" placeholder="Password"/>
            </div>
            <div>
                <button>サインアップ</button>
            </div>
        </form>
    </div>
</template>
