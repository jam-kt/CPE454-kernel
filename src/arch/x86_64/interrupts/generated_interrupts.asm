section .text
bits 64

global isr0
isr0:
    push 0xDEADBEEF
    push 0
    jmp isr_handler

global isr1
isr1:
    push 0xDEADBEEF
    push 1
    jmp isr_handler

global isr2
isr2:
    push 0xDEADBEEF
    push 2
    jmp isr_handler

global isr3
isr3:
    push 0xDEADBEEF
    push 3
    jmp isr_handler

global isr4
isr4:
    push 0xDEADBEEF
    push 4
    jmp isr_handler

global isr5
isr5:
    push 0xDEADBEEF
    push 5
    jmp isr_handler

global isr6
isr6:
    push 0xDEADBEEF
    push 6
    jmp isr_handler

global isr7
isr7:
    push 0xDEADBEEF
    push 7
    jmp isr_handler

global isr8
isr8:
    push 8
    jmp isr_handler

global isr9
isr9:
    push 0xDEADBEEF
    push 9
    jmp isr_handler

global isr10
isr10:
    push 10
    jmp isr_handler

global isr11
isr11:
    push 11
    jmp isr_handler

global isr12
isr12:
    push 12
    jmp isr_handler

global isr13
isr13:
    push 13
    jmp isr_handler

global isr14
isr14:
    push 14
    jmp isr_handler

global isr15
isr15:
    push 0xDEADBEEF
    push 15
    jmp isr_handler

global isr16
isr16:
    push 0xDEADBEEF
    push 16
    jmp isr_handler

global isr17
isr17:
    push 17
    jmp isr_handler

global isr18
isr18:
    push 0xDEADBEEF
    push 18
    jmp isr_handler

global isr19
isr19:
    push 0xDEADBEEF
    push 19
    jmp isr_handler

global isr20
isr20:
    push 0xDEADBEEF
    push 20
    jmp isr_handler

global isr21
isr21:
    push 21
    jmp isr_handler

global isr22
isr22:
    push 0xDEADBEEF
    push 22
    jmp isr_handler

global isr23
isr23:
    push 0xDEADBEEF
    push 23
    jmp isr_handler

global isr24
isr24:
    push 0xDEADBEEF
    push 24
    jmp isr_handler

global isr25
isr25:
    push 0xDEADBEEF
    push 25
    jmp isr_handler

global isr26
isr26:
    push 0xDEADBEEF
    push 26
    jmp isr_handler

global isr27
isr27:
    push 0xDEADBEEF
    push 27
    jmp isr_handler

global isr28
isr28:
    push 0xDEADBEEF
    push 28
    jmp isr_handler

global isr29
isr29:
    push 29
    jmp isr_handler

global isr30
isr30:
    push 30
    jmp isr_handler

global isr31
isr31:
    push 0xDEADBEEF
    push 31
    jmp isr_handler

global isr32
isr32:
    push 0xDEADBEEF
    push 32
    jmp isr_handler

global isr33
isr33:
    push 0xDEADBEEF
    push 33
    jmp isr_handler

global isr34
isr34:
    push 0xDEADBEEF
    push 34
    jmp isr_handler

global isr35
isr35:
    push 0xDEADBEEF
    push 35
    jmp isr_handler

global isr36
isr36:
    push 0xDEADBEEF
    push 36
    jmp isr_handler

global isr37
isr37:
    push 0xDEADBEEF
    push 37
    jmp isr_handler

global isr38
isr38:
    push 0xDEADBEEF
    push 38
    jmp isr_handler

global isr39
isr39:
    push 0xDEADBEEF
    push 39
    jmp isr_handler

global isr40
isr40:
    push 0xDEADBEEF
    push 40
    jmp isr_handler

global isr41
isr41:
    push 0xDEADBEEF
    push 41
    jmp isr_handler

global isr42
isr42:
    push 0xDEADBEEF
    push 42
    jmp isr_handler

global isr43
isr43:
    push 0xDEADBEEF
    push 43
    jmp isr_handler

global isr44
isr44:
    push 0xDEADBEEF
    push 44
    jmp isr_handler

global isr45
isr45:
    push 0xDEADBEEF
    push 45
    jmp isr_handler

global isr46
isr46:
    push 0xDEADBEEF
    push 46
    jmp isr_handler

global isr47
isr47:
    push 0xDEADBEEF
    push 47
    jmp isr_handler

global isr48
isr48:
    push 0xDEADBEEF
    push 48
    jmp isr_handler

global isr49
isr49:
    push 0xDEADBEEF
    push 49
    jmp isr_handler

global isr50
isr50:
    push 0xDEADBEEF
    push 50
    jmp isr_handler

global isr51
isr51:
    push 0xDEADBEEF
    push 51
    jmp isr_handler

global isr52
isr52:
    push 0xDEADBEEF
    push 52
    jmp isr_handler

global isr53
isr53:
    push 0xDEADBEEF
    push 53
    jmp isr_handler

global isr54
isr54:
    push 0xDEADBEEF
    push 54
    jmp isr_handler

global isr55
isr55:
    push 0xDEADBEEF
    push 55
    jmp isr_handler

global isr56
isr56:
    push 0xDEADBEEF
    push 56
    jmp isr_handler

global isr57
isr57:
    push 0xDEADBEEF
    push 57
    jmp isr_handler

global isr58
isr58:
    push 0xDEADBEEF
    push 58
    jmp isr_handler

global isr59
isr59:
    push 0xDEADBEEF
    push 59
    jmp isr_handler

global isr60
isr60:
    push 0xDEADBEEF
    push 60
    jmp isr_handler

global isr61
isr61:
    push 0xDEADBEEF
    push 61
    jmp isr_handler

global isr62
isr62:
    push 0xDEADBEEF
    push 62
    jmp isr_handler

global isr63
isr63:
    push 0xDEADBEEF
    push 63
    jmp isr_handler

global isr64
isr64:
    push 0xDEADBEEF
    push 64
    jmp isr_handler

global isr65
isr65:
    push 0xDEADBEEF
    push 65
    jmp isr_handler

global isr66
isr66:
    push 0xDEADBEEF
    push 66
    jmp isr_handler

global isr67
isr67:
    push 0xDEADBEEF
    push 67
    jmp isr_handler

global isr68
isr68:
    push 0xDEADBEEF
    push 68
    jmp isr_handler

global isr69
isr69:
    push 0xDEADBEEF
    push 69
    jmp isr_handler

global isr70
isr70:
    push 0xDEADBEEF
    push 70
    jmp isr_handler

global isr71
isr71:
    push 0xDEADBEEF
    push 71
    jmp isr_handler

global isr72
isr72:
    push 0xDEADBEEF
    push 72
    jmp isr_handler

global isr73
isr73:
    push 0xDEADBEEF
    push 73
    jmp isr_handler

global isr74
isr74:
    push 0xDEADBEEF
    push 74
    jmp isr_handler

global isr75
isr75:
    push 0xDEADBEEF
    push 75
    jmp isr_handler

global isr76
isr76:
    push 0xDEADBEEF
    push 76
    jmp isr_handler

global isr77
isr77:
    push 0xDEADBEEF
    push 77
    jmp isr_handler

global isr78
isr78:
    push 0xDEADBEEF
    push 78
    jmp isr_handler

global isr79
isr79:
    push 0xDEADBEEF
    push 79
    jmp isr_handler

global isr80
isr80:
    push 0xDEADBEEF
    push 80
    jmp isr_handler

global isr81
isr81:
    push 0xDEADBEEF
    push 81
    jmp isr_handler

global isr82
isr82:
    push 0xDEADBEEF
    push 82
    jmp isr_handler

global isr83
isr83:
    push 0xDEADBEEF
    push 83
    jmp isr_handler

global isr84
isr84:
    push 0xDEADBEEF
    push 84
    jmp isr_handler

global isr85
isr85:
    push 0xDEADBEEF
    push 85
    jmp isr_handler

global isr86
isr86:
    push 0xDEADBEEF
    push 86
    jmp isr_handler

global isr87
isr87:
    push 0xDEADBEEF
    push 87
    jmp isr_handler

global isr88
isr88:
    push 0xDEADBEEF
    push 88
    jmp isr_handler

global isr89
isr89:
    push 0xDEADBEEF
    push 89
    jmp isr_handler

global isr90
isr90:
    push 0xDEADBEEF
    push 90
    jmp isr_handler

global isr91
isr91:
    push 0xDEADBEEF
    push 91
    jmp isr_handler

global isr92
isr92:
    push 0xDEADBEEF
    push 92
    jmp isr_handler

global isr93
isr93:
    push 0xDEADBEEF
    push 93
    jmp isr_handler

global isr94
isr94:
    push 0xDEADBEEF
    push 94
    jmp isr_handler

global isr95
isr95:
    push 0xDEADBEEF
    push 95
    jmp isr_handler

global isr96
isr96:
    push 0xDEADBEEF
    push 96
    jmp isr_handler

global isr97
isr97:
    push 0xDEADBEEF
    push 97
    jmp isr_handler

global isr98
isr98:
    push 0xDEADBEEF
    push 98
    jmp isr_handler

global isr99
isr99:
    push 0xDEADBEEF
    push 99
    jmp isr_handler

global isr100
isr100:
    push 0xDEADBEEF
    push 100
    jmp isr_handler

global isr101
isr101:
    push 0xDEADBEEF
    push 101
    jmp isr_handler

global isr102
isr102:
    push 0xDEADBEEF
    push 102
    jmp isr_handler

global isr103
isr103:
    push 0xDEADBEEF
    push 103
    jmp isr_handler

global isr104
isr104:
    push 0xDEADBEEF
    push 104
    jmp isr_handler

global isr105
isr105:
    push 0xDEADBEEF
    push 105
    jmp isr_handler

global isr106
isr106:
    push 0xDEADBEEF
    push 106
    jmp isr_handler

global isr107
isr107:
    push 0xDEADBEEF
    push 107
    jmp isr_handler

global isr108
isr108:
    push 0xDEADBEEF
    push 108
    jmp isr_handler

global isr109
isr109:
    push 0xDEADBEEF
    push 109
    jmp isr_handler

global isr110
isr110:
    push 0xDEADBEEF
    push 110
    jmp isr_handler

global isr111
isr111:
    push 0xDEADBEEF
    push 111
    jmp isr_handler

global isr112
isr112:
    push 0xDEADBEEF
    push 112
    jmp isr_handler

global isr113
isr113:
    push 0xDEADBEEF
    push 113
    jmp isr_handler

global isr114
isr114:
    push 0xDEADBEEF
    push 114
    jmp isr_handler

global isr115
isr115:
    push 0xDEADBEEF
    push 115
    jmp isr_handler

global isr116
isr116:
    push 0xDEADBEEF
    push 116
    jmp isr_handler

global isr117
isr117:
    push 0xDEADBEEF
    push 117
    jmp isr_handler

global isr118
isr118:
    push 0xDEADBEEF
    push 118
    jmp isr_handler

global isr119
isr119:
    push 0xDEADBEEF
    push 119
    jmp isr_handler

global isr120
isr120:
    push 0xDEADBEEF
    push 120
    jmp isr_handler

global isr121
isr121:
    push 0xDEADBEEF
    push 121
    jmp isr_handler

global isr122
isr122:
    push 0xDEADBEEF
    push 122
    jmp isr_handler

global isr123
isr123:
    push 0xDEADBEEF
    push 123
    jmp isr_handler

global isr124
isr124:
    push 0xDEADBEEF
    push 124
    jmp isr_handler

global isr125
isr125:
    push 0xDEADBEEF
    push 125
    jmp isr_handler

global isr126
isr126:
    push 0xDEADBEEF
    push 126
    jmp isr_handler

global isr127
isr127:
    push 0xDEADBEEF
    push 127
    jmp isr_handler

global isr128
isr128:
    push 0xDEADBEEF
    push 128
    jmp isr_handler

global isr129
isr129:
    push 0xDEADBEEF
    push 129
    jmp isr_handler

global isr130
isr130:
    push 0xDEADBEEF
    push 130
    jmp isr_handler

global isr131
isr131:
    push 0xDEADBEEF
    push 131
    jmp isr_handler

global isr132
isr132:
    push 0xDEADBEEF
    push 132
    jmp isr_handler

global isr133
isr133:
    push 0xDEADBEEF
    push 133
    jmp isr_handler

global isr134
isr134:
    push 0xDEADBEEF
    push 134
    jmp isr_handler

global isr135
isr135:
    push 0xDEADBEEF
    push 135
    jmp isr_handler

global isr136
isr136:
    push 0xDEADBEEF
    push 136
    jmp isr_handler

global isr137
isr137:
    push 0xDEADBEEF
    push 137
    jmp isr_handler

global isr138
isr138:
    push 0xDEADBEEF
    push 138
    jmp isr_handler

global isr139
isr139:
    push 0xDEADBEEF
    push 139
    jmp isr_handler

global isr140
isr140:
    push 0xDEADBEEF
    push 140
    jmp isr_handler

global isr141
isr141:
    push 0xDEADBEEF
    push 141
    jmp isr_handler

global isr142
isr142:
    push 0xDEADBEEF
    push 142
    jmp isr_handler

global isr143
isr143:
    push 0xDEADBEEF
    push 143
    jmp isr_handler

global isr144
isr144:
    push 0xDEADBEEF
    push 144
    jmp isr_handler

global isr145
isr145:
    push 0xDEADBEEF
    push 145
    jmp isr_handler

global isr146
isr146:
    push 0xDEADBEEF
    push 146
    jmp isr_handler

global isr147
isr147:
    push 0xDEADBEEF
    push 147
    jmp isr_handler

global isr148
isr148:
    push 0xDEADBEEF
    push 148
    jmp isr_handler

global isr149
isr149:
    push 0xDEADBEEF
    push 149
    jmp isr_handler

global isr150
isr150:
    push 0xDEADBEEF
    push 150
    jmp isr_handler

global isr151
isr151:
    push 0xDEADBEEF
    push 151
    jmp isr_handler

global isr152
isr152:
    push 0xDEADBEEF
    push 152
    jmp isr_handler

global isr153
isr153:
    push 0xDEADBEEF
    push 153
    jmp isr_handler

global isr154
isr154:
    push 0xDEADBEEF
    push 154
    jmp isr_handler

global isr155
isr155:
    push 0xDEADBEEF
    push 155
    jmp isr_handler

global isr156
isr156:
    push 0xDEADBEEF
    push 156
    jmp isr_handler

global isr157
isr157:
    push 0xDEADBEEF
    push 157
    jmp isr_handler

global isr158
isr158:
    push 0xDEADBEEF
    push 158
    jmp isr_handler

global isr159
isr159:
    push 0xDEADBEEF
    push 159
    jmp isr_handler

global isr160
isr160:
    push 0xDEADBEEF
    push 160
    jmp isr_handler

global isr161
isr161:
    push 0xDEADBEEF
    push 161
    jmp isr_handler

global isr162
isr162:
    push 0xDEADBEEF
    push 162
    jmp isr_handler

global isr163
isr163:
    push 0xDEADBEEF
    push 163
    jmp isr_handler

global isr164
isr164:
    push 0xDEADBEEF
    push 164
    jmp isr_handler

global isr165
isr165:
    push 0xDEADBEEF
    push 165
    jmp isr_handler

global isr166
isr166:
    push 0xDEADBEEF
    push 166
    jmp isr_handler

global isr167
isr167:
    push 0xDEADBEEF
    push 167
    jmp isr_handler

global isr168
isr168:
    push 0xDEADBEEF
    push 168
    jmp isr_handler

global isr169
isr169:
    push 0xDEADBEEF
    push 169
    jmp isr_handler

global isr170
isr170:
    push 0xDEADBEEF
    push 170
    jmp isr_handler

global isr171
isr171:
    push 0xDEADBEEF
    push 171
    jmp isr_handler

global isr172
isr172:
    push 0xDEADBEEF
    push 172
    jmp isr_handler

global isr173
isr173:
    push 0xDEADBEEF
    push 173
    jmp isr_handler

global isr174
isr174:
    push 0xDEADBEEF
    push 174
    jmp isr_handler

global isr175
isr175:
    push 0xDEADBEEF
    push 175
    jmp isr_handler

global isr176
isr176:
    push 0xDEADBEEF
    push 176
    jmp isr_handler

global isr177
isr177:
    push 0xDEADBEEF
    push 177
    jmp isr_handler

global isr178
isr178:
    push 0xDEADBEEF
    push 178
    jmp isr_handler

global isr179
isr179:
    push 0xDEADBEEF
    push 179
    jmp isr_handler

global isr180
isr180:
    push 0xDEADBEEF
    push 180
    jmp isr_handler

global isr181
isr181:
    push 0xDEADBEEF
    push 181
    jmp isr_handler

global isr182
isr182:
    push 0xDEADBEEF
    push 182
    jmp isr_handler

global isr183
isr183:
    push 0xDEADBEEF
    push 183
    jmp isr_handler

global isr184
isr184:
    push 0xDEADBEEF
    push 184
    jmp isr_handler

global isr185
isr185:
    push 0xDEADBEEF
    push 185
    jmp isr_handler

global isr186
isr186:
    push 0xDEADBEEF
    push 186
    jmp isr_handler

global isr187
isr187:
    push 0xDEADBEEF
    push 187
    jmp isr_handler

global isr188
isr188:
    push 0xDEADBEEF
    push 188
    jmp isr_handler

global isr189
isr189:
    push 0xDEADBEEF
    push 189
    jmp isr_handler

global isr190
isr190:
    push 0xDEADBEEF
    push 190
    jmp isr_handler

global isr191
isr191:
    push 0xDEADBEEF
    push 191
    jmp isr_handler

global isr192
isr192:
    push 0xDEADBEEF
    push 192
    jmp isr_handler

global isr193
isr193:
    push 0xDEADBEEF
    push 193
    jmp isr_handler

global isr194
isr194:
    push 0xDEADBEEF
    push 194
    jmp isr_handler

global isr195
isr195:
    push 0xDEADBEEF
    push 195
    jmp isr_handler

global isr196
isr196:
    push 0xDEADBEEF
    push 196
    jmp isr_handler

global isr197
isr197:
    push 0xDEADBEEF
    push 197
    jmp isr_handler

global isr198
isr198:
    push 0xDEADBEEF
    push 198
    jmp isr_handler

global isr199
isr199:
    push 0xDEADBEEF
    push 199
    jmp isr_handler

global isr200
isr200:
    push 0xDEADBEEF
    push 200
    jmp isr_handler

global isr201
isr201:
    push 0xDEADBEEF
    push 201
    jmp isr_handler

global isr202
isr202:
    push 0xDEADBEEF
    push 202
    jmp isr_handler

global isr203
isr203:
    push 0xDEADBEEF
    push 203
    jmp isr_handler

global isr204
isr204:
    push 0xDEADBEEF
    push 204
    jmp isr_handler

global isr205
isr205:
    push 0xDEADBEEF
    push 205
    jmp isr_handler

global isr206
isr206:
    push 0xDEADBEEF
    push 206
    jmp isr_handler

global isr207
isr207:
    push 0xDEADBEEF
    push 207
    jmp isr_handler

global isr208
isr208:
    push 0xDEADBEEF
    push 208
    jmp isr_handler

global isr209
isr209:
    push 0xDEADBEEF
    push 209
    jmp isr_handler

global isr210
isr210:
    push 0xDEADBEEF
    push 210
    jmp isr_handler

global isr211
isr211:
    push 0xDEADBEEF
    push 211
    jmp isr_handler

global isr212
isr212:
    push 0xDEADBEEF
    push 212
    jmp isr_handler

global isr213
isr213:
    push 0xDEADBEEF
    push 213
    jmp isr_handler

global isr214
isr214:
    push 0xDEADBEEF
    push 214
    jmp isr_handler

global isr215
isr215:
    push 0xDEADBEEF
    push 215
    jmp isr_handler

global isr216
isr216:
    push 0xDEADBEEF
    push 216
    jmp isr_handler

global isr217
isr217:
    push 0xDEADBEEF
    push 217
    jmp isr_handler

global isr218
isr218:
    push 0xDEADBEEF
    push 218
    jmp isr_handler

global isr219
isr219:
    push 0xDEADBEEF
    push 219
    jmp isr_handler

global isr220
isr220:
    push 0xDEADBEEF
    push 220
    jmp isr_handler

global isr221
isr221:
    push 0xDEADBEEF
    push 221
    jmp isr_handler

global isr222
isr222:
    push 0xDEADBEEF
    push 222
    jmp isr_handler

global isr223
isr223:
    push 0xDEADBEEF
    push 223
    jmp isr_handler

global isr224
isr224:
    push 0xDEADBEEF
    push 224
    jmp isr_handler

global isr225
isr225:
    push 0xDEADBEEF
    push 225
    jmp isr_handler

global isr226
isr226:
    push 0xDEADBEEF
    push 226
    jmp isr_handler

global isr227
isr227:
    push 0xDEADBEEF
    push 227
    jmp isr_handler

global isr228
isr228:
    push 0xDEADBEEF
    push 228
    jmp isr_handler

global isr229
isr229:
    push 0xDEADBEEF
    push 229
    jmp isr_handler

global isr230
isr230:
    push 0xDEADBEEF
    push 230
    jmp isr_handler

global isr231
isr231:
    push 0xDEADBEEF
    push 231
    jmp isr_handler

global isr232
isr232:
    push 0xDEADBEEF
    push 232
    jmp isr_handler

global isr233
isr233:
    push 0xDEADBEEF
    push 233
    jmp isr_handler

global isr234
isr234:
    push 0xDEADBEEF
    push 234
    jmp isr_handler

global isr235
isr235:
    push 0xDEADBEEF
    push 235
    jmp isr_handler

global isr236
isr236:
    push 0xDEADBEEF
    push 236
    jmp isr_handler

global isr237
isr237:
    push 0xDEADBEEF
    push 237
    jmp isr_handler

global isr238
isr238:
    push 0xDEADBEEF
    push 238
    jmp isr_handler

global isr239
isr239:
    push 0xDEADBEEF
    push 239
    jmp isr_handler

global isr240
isr240:
    push 0xDEADBEEF
    push 240
    jmp isr_handler

global isr241
isr241:
    push 0xDEADBEEF
    push 241
    jmp isr_handler

global isr242
isr242:
    push 0xDEADBEEF
    push 242
    jmp isr_handler

global isr243
isr243:
    push 0xDEADBEEF
    push 243
    jmp isr_handler

global isr244
isr244:
    push 0xDEADBEEF
    push 244
    jmp isr_handler

global isr245
isr245:
    push 0xDEADBEEF
    push 245
    jmp isr_handler

global isr246
isr246:
    push 0xDEADBEEF
    push 246
    jmp isr_handler

global isr247
isr247:
    push 0xDEADBEEF
    push 247
    jmp isr_handler

global isr248
isr248:
    push 0xDEADBEEF
    push 248
    jmp isr_handler

global isr249
isr249:
    push 0xDEADBEEF
    push 249
    jmp isr_handler

global isr250
isr250:
    push 0xDEADBEEF
    push 250
    jmp isr_handler

global isr251
isr251:
    push 0xDEADBEEF
    push 251
    jmp isr_handler

global isr252
isr252:
    push 0xDEADBEEF
    push 252
    jmp isr_handler

global isr253
isr253:
    push 0xDEADBEEF
    push 253
    jmp isr_handler

global isr254
isr254:
    push 0xDEADBEEF
    push 254
    jmp isr_handler

global isr255
isr255:
    push 0xDEADBEEF
    push 255
    jmp isr_handler

