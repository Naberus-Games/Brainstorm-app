package com.naberusgames.brainstorm

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform