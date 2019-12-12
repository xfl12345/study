
bomb：     文件格式 elf32-i386


Disassembly of section .init:

08049000 <_init>:
 8049000:	53                   	push   %ebx
 8049001:	83 ec 08             	sub    $0x8,%esp
 8049004:	e8 67 01 00 00       	call   8049170 <__x86.get_pc_thunk.bx>
 8049009:	81 c3 f7 2f 00 00    	add    $0x2ff7,%ebx
 804900f:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8049015:	85 c0                	test   %eax,%eax
 8049017:	74 02                	je     804901b <_init+0x1b>
 8049019:	ff d0                	call   *%eax
 804901b:	83 c4 08             	add    $0x8,%esp
 804901e:	5b                   	pop    %ebx
 804901f:	c3                   	ret    

Disassembly of section .plt:

08049020 <printf@plt-0x10>:
 8049020:	ff 35 04 c0 04 08    	pushl  0x804c004
 8049026:	ff 25 08 c0 04 08    	jmp    *0x804c008
 804902c:	00 00                	add    %al,(%eax)
	...

08049030 <printf@plt>:
 8049030:	ff 25 0c c0 04 08    	jmp    *0x804c00c
 8049036:	68 00 00 00 00       	push   $0x0
 804903b:	e9 e0 ff ff ff       	jmp    8049020 <_init+0x20>

08049040 <fflush@plt>:
 8049040:	ff 25 10 c0 04 08    	jmp    *0x804c010
 8049046:	68 08 00 00 00       	push   $0x8
 804904b:	e9 d0 ff ff ff       	jmp    8049020 <_init+0x20>

08049050 <fgets@plt>:
 8049050:	ff 25 14 c0 04 08    	jmp    *0x804c014
 8049056:	68 10 00 00 00       	push   $0x10
 804905b:	e9 c0 ff ff ff       	jmp    8049020 <_init+0x20>

08049060 <signal@plt>:
 8049060:	ff 25 18 c0 04 08    	jmp    *0x804c018
 8049066:	68 18 00 00 00       	push   $0x18
 804906b:	e9 b0 ff ff ff       	jmp    8049020 <_init+0x20>

08049070 <sleep@plt>:
 8049070:	ff 25 1c c0 04 08    	jmp    *0x804c01c
 8049076:	68 20 00 00 00       	push   $0x20
 804907b:	e9 a0 ff ff ff       	jmp    8049020 <_init+0x20>

08049080 <getenv@plt>:
 8049080:	ff 25 20 c0 04 08    	jmp    *0x804c020
 8049086:	68 28 00 00 00       	push   $0x28
 804908b:	e9 90 ff ff ff       	jmp    8049020 <_init+0x20>

08049090 <puts@plt>:
 8049090:	ff 25 24 c0 04 08    	jmp    *0x804c024
 8049096:	68 30 00 00 00       	push   $0x30
 804909b:	e9 80 ff ff ff       	jmp    8049020 <_init+0x20>

080490a0 <exit@plt>:
 80490a0:	ff 25 28 c0 04 08    	jmp    *0x804c028
 80490a6:	68 38 00 00 00       	push   $0x38
 80490ab:	e9 70 ff ff ff       	jmp    8049020 <_init+0x20>

080490b0 <strlen@plt>:
 80490b0:	ff 25 2c c0 04 08    	jmp    *0x804c02c
 80490b6:	68 40 00 00 00       	push   $0x40
 80490bb:	e9 60 ff ff ff       	jmp    8049020 <_init+0x20>

080490c0 <__libc_start_main@plt>:
 80490c0:	ff 25 30 c0 04 08    	jmp    *0x804c030
 80490c6:	68 48 00 00 00       	push   $0x48
 80490cb:	e9 50 ff ff ff       	jmp    8049020 <_init+0x20>

080490d0 <__isoc99_sscanf@plt>:
 80490d0:	ff 25 34 c0 04 08    	jmp    *0x804c034
 80490d6:	68 50 00 00 00       	push   $0x50
 80490db:	e9 40 ff ff ff       	jmp    8049020 <_init+0x20>

080490e0 <fopen@plt>:
 80490e0:	ff 25 38 c0 04 08    	jmp    *0x804c038
 80490e6:	68 58 00 00 00       	push   $0x58
 80490eb:	e9 30 ff ff ff       	jmp    8049020 <_init+0x20>

080490f0 <strtok@plt>:
 80490f0:	ff 25 3c c0 04 08    	jmp    *0x804c03c
 80490f6:	68 60 00 00 00       	push   $0x60
 80490fb:	e9 20 ff ff ff       	jmp    8049020 <_init+0x20>

08049100 <atoi@plt>:
 8049100:	ff 25 40 c0 04 08    	jmp    *0x804c040
 8049106:	68 68 00 00 00       	push   $0x68
 804910b:	e9 10 ff ff ff       	jmp    8049020 <_init+0x20>

08049110 <__ctype_b_loc@plt>:
 8049110:	ff 25 44 c0 04 08    	jmp    *0x804c044
 8049116:	68 70 00 00 00       	push   $0x70
 804911b:	e9 00 ff ff ff       	jmp    8049020 <_init+0x20>

Disassembly of section .text:

08049120 <_start>:
 8049120:	31 ed                	xor    %ebp,%ebp
 8049122:	5e                   	pop    %esi
 8049123:	89 e1                	mov    %esp,%ecx
 8049125:	83 e4 f0             	and    $0xfffffff0,%esp
 8049128:	50                   	push   %eax
 8049129:	54                   	push   %esp
 804912a:	52                   	push   %edx
 804912b:	e8 23 00 00 00       	call   8049153 <_start+0x33>
 8049130:	81 c3 d0 2e 00 00    	add    $0x2ed0,%ebx
 8049136:	8d 83 f0 de ff ff    	lea    -0x2110(%ebx),%eax
 804913c:	50                   	push   %eax
 804913d:	8d 83 90 de ff ff    	lea    -0x2170(%ebx),%eax
 8049143:	50                   	push   %eax
 8049144:	51                   	push   %ecx
 8049145:	56                   	push   %esi
 8049146:	c7 c0 32 92 04 08    	mov    $0x8049232,%eax
 804914c:	50                   	push   %eax
 804914d:	e8 6e ff ff ff       	call   80490c0 <__libc_start_main@plt>
 8049152:	f4                   	hlt    
 8049153:	8b 1c 24             	mov    (%esp),%ebx
 8049156:	c3                   	ret    
 8049157:	66 90                	xchg   %ax,%ax
 8049159:	66 90                	xchg   %ax,%ax
 804915b:	66 90                	xchg   %ax,%ax
 804915d:	66 90                	xchg   %ax,%ax
 804915f:	90                   	nop

08049160 <_dl_relocate_static_pie>:
 8049160:	c3                   	ret    
 8049161:	66 90                	xchg   %ax,%ax
 8049163:	66 90                	xchg   %ax,%ax
 8049165:	66 90                	xchg   %ax,%ax
 8049167:	66 90                	xchg   %ax,%ax
 8049169:	66 90                	xchg   %ax,%ax
 804916b:	66 90                	xchg   %ax,%ax
 804916d:	66 90                	xchg   %ax,%ax
 804916f:	90                   	nop

08049170 <__x86.get_pc_thunk.bx>:
 8049170:	8b 1c 24             	mov    (%esp),%ebx
 8049173:	c3                   	ret    
 8049174:	66 90                	xchg   %ax,%ax
 8049176:	66 90                	xchg   %ax,%ax
 8049178:	66 90                	xchg   %ax,%ax
 804917a:	66 90                	xchg   %ax,%ax
 804917c:	66 90                	xchg   %ax,%ax
 804917e:	66 90                	xchg   %ax,%ax

08049180 <deregister_tm_clones>:
 8049180:	b8 40 c2 04 08       	mov    $0x804c240,%eax
 8049185:	3d 40 c2 04 08       	cmp    $0x804c240,%eax
 804918a:	74 24                	je     80491b0 <deregister_tm_clones+0x30>
 804918c:	b8 00 00 00 00       	mov    $0x0,%eax
 8049191:	85 c0                	test   %eax,%eax
 8049193:	74 1b                	je     80491b0 <deregister_tm_clones+0x30>
 8049195:	55                   	push   %ebp
 8049196:	89 e5                	mov    %esp,%ebp
 8049198:	83 ec 14             	sub    $0x14,%esp
 804919b:	68 40 c2 04 08       	push   $0x804c240
 80491a0:	ff d0                	call   *%eax
 80491a2:	83 c4 10             	add    $0x10,%esp
 80491a5:	c9                   	leave  
 80491a6:	c3                   	ret    
 80491a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80491ae:	66 90                	xchg   %ax,%ax
 80491b0:	c3                   	ret    
 80491b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80491b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80491bf:	90                   	nop

080491c0 <register_tm_clones>:
 80491c0:	b8 40 c2 04 08       	mov    $0x804c240,%eax
 80491c5:	2d 40 c2 04 08       	sub    $0x804c240,%eax
 80491ca:	c1 f8 02             	sar    $0x2,%eax
 80491cd:	89 c2                	mov    %eax,%edx
 80491cf:	c1 ea 1f             	shr    $0x1f,%edx
 80491d2:	01 d0                	add    %edx,%eax
 80491d4:	d1 f8                	sar    %eax
 80491d6:	74 20                	je     80491f8 <register_tm_clones+0x38>
 80491d8:	ba 00 00 00 00       	mov    $0x0,%edx
 80491dd:	85 d2                	test   %edx,%edx
 80491df:	74 17                	je     80491f8 <register_tm_clones+0x38>
 80491e1:	55                   	push   %ebp
 80491e2:	89 e5                	mov    %esp,%ebp
 80491e4:	83 ec 10             	sub    $0x10,%esp
 80491e7:	50                   	push   %eax
 80491e8:	68 40 c2 04 08       	push   $0x804c240
 80491ed:	ff d2                	call   *%edx
 80491ef:	83 c4 10             	add    $0x10,%esp
 80491f2:	c9                   	leave  
 80491f3:	c3                   	ret    
 80491f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80491f8:	c3                   	ret    
 80491f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08049200 <__do_global_dtors_aux>:
 8049200:	80 3d 48 c2 04 08 00 	cmpb   $0x0,0x804c248
 8049207:	75 17                	jne    8049220 <__do_global_dtors_aux+0x20>
 8049209:	55                   	push   %ebp
 804920a:	89 e5                	mov    %esp,%ebp
 804920c:	83 ec 08             	sub    $0x8,%esp
 804920f:	e8 6c ff ff ff       	call   8049180 <deregister_tm_clones>
 8049214:	c6 05 48 c2 04 08 01 	movb   $0x1,0x804c248
 804921b:	c9                   	leave  
 804921c:	c3                   	ret    
 804921d:	8d 76 00             	lea    0x0(%esi),%esi
 8049220:	c3                   	ret    
 8049221:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049228:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804922f:	90                   	nop

08049230 <frame_dummy>:
 8049230:	eb 8e                	jmp    80491c0 <register_tm_clones>

08049232 <main>:
 8049232:	8d 4c 24 04          	lea    0x4(%esp),%ecx		;M[ecx] = &R[esp+4]
 8049236:	83 e4 f0             	and    $0xfffffff0,%esp		;$0xfffffff0 = $0xfffffff0 & R[esp]
 8049239:	ff 71 fc             	pushl  -0x4(%ecx)			;R[esp]=R[esp-4] -4;M[R[esp]]=M[ecx-4]
 804923c:	55                   	push   %ebp					;R[esp]=R[esp] -1;M[R[esp]]=M[ebp]
 804923d:	89 e5                	mov    %esp,%ebp			;R[ebp]=R[esp]
 804923f:	53                   	push   %ebx					;R[esp]=R[esp] -1;M[R[esp]]=M[ebx]
 8049240:	51                   	push   %ecx					;R[esp]=R[esp] -1;M[R[esp]]=M[ecx]
 8049241:	83 ec 10             	sub    $0x10,%esp			;R[esp]=R[esp] -16
 8049244:	89 cb                	mov    %ecx,%ebx			;R[ebx]=R[ecx]
 8049246:	83 3b 01             	cmpl   $0x1,(%ebx)			;R[ebx]-1
 8049249:	75 0c                	jne    8049257 <main+0x25>	;if( != )goto 8049257;
 804924b:	a1 40 c2 04 08       	mov    0x804c240,%eax		;R[eax] = 0x804c240
 8049250:	a3 50 c2 04 08       	mov    %eax,0x804c250		;0x804c250 = R[eax]
 8049255:	eb 75                	jmp    80492cc <main+0x9a>	;goto 80492cc
 8049257:	83 3b 02             	cmpl   $0x2,(%ebx)			;M[R[ebx]] -2
 804925a:	75 50                	jne    80492ac <main+0x7a>	;if( != )goto 80492ac;
 804925c:	8b 43 04             	mov    0x4(%ebx),%eax		;R[eax] = M[R[ebx] +4]
 804925f:	83 c0 04             	add    $0x4,%eax			;R[eax] = R[eax] + 4
 8049262:	8b 00                	mov    (%eax),%eax			
 8049264:	83 ec 08             	sub    $0x8,%esp
 8049267:	68 08 a0 04 08       	push   $0x804a008
 804926c:	50                   	push   %eax
 804926d:	e8 6e fe ff ff       	call   80490e0 <fopen@plt>
 8049272:	83 c4 10             	add    $0x10,%esp
 8049275:	a3 50 c2 04 08       	mov    %eax,0x804c250
 804927a:	a1 50 c2 04 08       	mov    0x804c250,%eax
 804927f:	85 c0                	test   %eax,%eax
 8049281:	75 49                	jne    80492cc <main+0x9a>
 8049283:	8b 43 04             	mov    0x4(%ebx),%eax
 8049286:	83 c0 04             	add    $0x4,%eax
 8049289:	8b 10                	mov    (%eax),%edx
 804928b:	8b 43 04             	mov    0x4(%ebx),%eax
 804928e:	8b 00                	mov    (%eax),%eax
 8049290:	83 ec 04             	sub    $0x4,%esp
 8049293:	52                   	push   %edx
 8049294:	50                   	push   %eax
 8049295:	68 0a a0 04 08       	push   $0x804a00a
 804929a:	e8 91 fd ff ff       	call   8049030 <printf@plt>
 804929f:	83 c4 10             	add    $0x10,%esp
 80492a2:	83 ec 0c             	sub    $0xc,%esp
 80492a5:	6a 08                	push   $0x8
 80492a7:	e8 f4 fd ff ff       	call   80490a0 <exit@plt>
 80492ac:	8b 43 04             	mov    0x4(%ebx),%eax
 80492af:	8b 00                	mov    (%eax),%eax
 80492b1:	83 ec 08             	sub    $0x8,%esp
 80492b4:	50                   	push   %eax
 80492b5:	68 27 a0 04 08       	push   $0x804a027
 80492ba:	e8 71 fd ff ff       	call   8049030 <printf@plt>
 80492bf:	83 c4 10             	add    $0x10,%esp
 80492c2:	83 ec 0c             	sub    $0xc,%esp
 80492c5:	6a 08                	push   $0x8
 80492c7:	e8 d4 fd ff ff       	call   80490a0 <exit@plt>
 80492cc:	e8 0e 09 00 00       	call   8049bdf <initialize_bomb>
 80492d1:	83 ec 0c             	sub    $0xc,%esp
 80492d4:	68 44 a0 04 08       	push   $0x804a044
 80492d9:	e8 b2 fd ff ff       	call   8049090 <puts@plt>
 80492de:	83 c4 10             	add    $0x10,%esp
 80492e1:	83 ec 0c             	sub    $0xc,%esp
 80492e4:	68 80 a0 04 08       	push   $0x804a080
 80492e9:	e8 a2 fd ff ff       	call   8049090 <puts@plt>
 80492ee:	83 c4 10             	add    $0x10,%esp
 80492f1:	e8 a3 09 00 00       	call   8049c99 <read_line>
 80492f6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80492f9:	83 ec 0c             	sub    $0xc,%esp
 80492fc:	ff 75 f4             	pushl  -0xc(%ebp)
 80492ff:	e8 73 01 00 00       	call   8049477 <phase_0>
 8049304:	83 c4 10             	add    $0x10,%esp
 8049307:	85 c0                	test   %eax,%eax
 8049309:	74 15                	je     8049320 <main+0xee>
 804930b:	e8 f5 0a 00 00       	call   8049e05 <phase_defused>
 8049310:	83 ec 0c             	sub    $0xc,%esp
 8049313:	68 ac a0 04 08       	push   $0x804a0ac
 8049318:	e8 73 fd ff ff       	call   8049090 <puts@plt>
 804931d:	83 c4 10             	add    $0x10,%esp
 8049320:	e8 74 09 00 00       	call   8049c99 <read_line>
 8049325:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049328:	83 ec 0c             	sub    $0xc,%esp
 804932b:	ff 75 f4             	pushl  -0xc(%ebp)
 804932e:	e8 74 01 00 00       	call   80494a7 <phase_1>
 8049333:	83 c4 10             	add    $0x10,%esp
 8049336:	85 c0                	test   %eax,%eax
 8049338:	74 15                	je     804934f <main+0x11d>
 804933a:	e8 c6 0a 00 00       	call   8049e05 <phase_defused>
 804933f:	83 ec 0c             	sub    $0xc,%esp
 8049342:	68 d4 a0 04 08       	push   $0x804a0d4
 8049347:	e8 44 fd ff ff       	call   8049090 <puts@plt>
 804934c:	83 c4 10             	add    $0x10,%esp
 804934f:	e8 45 09 00 00       	call   8049c99 <read_line>
 8049354:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049357:	83 ec 0c             	sub    $0xc,%esp
 804935a:	ff 75 f4             	pushl  -0xc(%ebp)
 804935d:	e8 af 01 00 00       	call   8049511 <phase_2>
 8049362:	83 c4 10             	add    $0x10,%esp
 8049365:	85 c0                	test   %eax,%eax
 8049367:	74 15                	je     804937e <main+0x14c>
 8049369:	e8 97 0a 00 00       	call   8049e05 <phase_defused>
 804936e:	83 ec 0c             	sub    $0xc,%esp
 8049371:	68 fd a0 04 08       	push   $0x804a0fd
 8049376:	e8 15 fd ff ff       	call   8049090 <puts@plt>
 804937b:	83 c4 10             	add    $0x10,%esp
 804937e:	e8 16 09 00 00       	call   8049c99 <read_line>
 8049383:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049386:	83 ec 0c             	sub    $0xc,%esp
 8049389:	ff 75 f4             	pushl  -0xc(%ebp)
 804938c:	e8 00 02 00 00       	call   8049591 <phase_3>
 8049391:	83 c4 10             	add    $0x10,%esp
 8049394:	85 c0                	test   %eax,%eax
 8049396:	74 15                	je     80493ad <main+0x17b>
 8049398:	e8 68 0a 00 00       	call   8049e05 <phase_defused>
 804939d:	83 ec 0c             	sub    $0xc,%esp
 80493a0:	68 1b a1 04 08       	push   $0x804a11b
 80493a5:	e8 e6 fc ff ff       	call   8049090 <puts@plt>
 80493aa:	83 c4 10             	add    $0x10,%esp
 80493ad:	e8 e7 08 00 00       	call   8049c99 <read_line>
 80493b2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80493b5:	83 ec 0c             	sub    $0xc,%esp
 80493b8:	ff 75 f4             	pushl  -0xc(%ebp)
 80493bb:	e8 e5 02 00 00       	call   80496a5 <phase_4>
 80493c0:	83 c4 10             	add    $0x10,%esp
 80493c3:	85 c0                	test   %eax,%eax
 80493c5:	74 15                	je     80493dc <main+0x1aa>
 80493c7:	e8 39 0a 00 00       	call   8049e05 <phase_defused>
 80493cc:	83 ec 0c             	sub    $0xc,%esp
 80493cf:	68 2c a1 04 08       	push   $0x804a12c
 80493d4:	e8 b7 fc ff ff       	call   8049090 <puts@plt>
 80493d9:	83 c4 10             	add    $0x10,%esp
 80493dc:	e8 b8 08 00 00       	call   8049c99 <read_line>
 80493e1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80493e4:	83 ec 0c             	sub    $0xc,%esp
 80493e7:	ff 75 f4             	pushl  -0xc(%ebp)
 80493ea:	e8 1e 03 00 00       	call   804970d <phase_5>
 80493ef:	83 c4 10             	add    $0x10,%esp
 80493f2:	85 c0                	test   %eax,%eax
 80493f4:	74 15                	je     804940b <main+0x1d9>
 80493f6:	e8 0a 0a 00 00       	call   8049e05 <phase_defused>
 80493fb:	83 ec 0c             	sub    $0xc,%esp
 80493fe:	68 50 a1 04 08       	push   $0x804a150
 8049403:	e8 88 fc ff ff       	call   8049090 <puts@plt>
 8049408:	83 c4 10             	add    $0x10,%esp
 804940b:	e8 89 08 00 00       	call   8049c99 <read_line>
 8049410:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049413:	83 ec 0c             	sub    $0xc,%esp
 8049416:	ff 75 f4             	pushl  -0xc(%ebp)
 8049419:	e8 66 03 00 00       	call   8049784 <phase_6>
 804941e:	83 c4 10             	add    $0x10,%esp
 8049421:	85 c0                	test   %eax,%eax
 8049423:	74 05                	je     804942a <main+0x1f8>
 8049425:	e8 db 09 00 00       	call   8049e05 <phase_defused>
 804942a:	b8 00 00 00 00       	mov    $0x0,%eax
 804942f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049432:	59                   	pop    %ecx
 8049433:	5b                   	pop    %ebx
 8049434:	5d                   	pop    %ebp
 8049435:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8049438:	c3                   	ret    

08049439 <IEpnBDSm>:
 8049439:	55                   	push   %ebp
 804943a:	89 e5                	mov    %esp,%ebp
 804943c:	83 ec 08             	sub    $0x8,%esp
 804943f:	8b 45 08             	mov    0x8(%ebp),%eax
 8049442:	0f af 45 0c          	imul   0xc(%ebp),%eax
 8049446:	89 c2                	mov    %eax,%edx
 8049448:	d9 45 10             	flds   0x10(%ebp)
 804944b:	d9 7d fe             	fnstcw -0x2(%ebp)
 804944e:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
 8049452:	80 cc 0c             	or     $0xc,%ah
 8049455:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
 8049459:	d9 6d fc             	fldcw  -0x4(%ebp)
 804945c:	db 5d f8             	fistpl -0x8(%ebp)
 804945f:	d9 6d fe             	fldcw  -0x2(%ebp)
 8049462:	8b 4d f8             	mov    -0x8(%ebp),%ecx
 8049465:	89 c8                	mov    %ecx,%eax
 8049467:	01 c0                	add    %eax,%eax
 8049469:	01 c8                	add    %ecx,%eax
 804946b:	01 c2                	add    %eax,%edx
 804946d:	8b 45 08             	mov    0x8(%ebp),%eax
 8049470:	c1 f8 03             	sar    $0x3,%eax
 8049473:	01 d0                	add    %edx,%eax
 8049475:	c9                   	leave  
 8049476:	c3                   	ret    

08049477 <phase_0>:
 8049477:	55                   	push   %ebp							;esp = esp -4;*esp = ebp;调用者的ebp入栈，借此保护调用者ebp的值
 8049478:	89 e5                	mov    %esp,%ebp					;将此刻栈顶指针寄存器（%esp）所存储的地址赋值给ebp
 804947a:	83 ec 08             	sub    $0x8,%esp					;栈顶生长8字节，可能是个long long int型变量
 804947d:	83 ec 08             	sub    $0x8,%esp					;栈顶生长8字节，可能是个long long int型变量
 8049480:	68 94 a1 04 08       	push   $0x804a194					;esp = esp -4;*esp = 0x804a194;4字节常量入栈，传递一个地址;经考证，是我们此次炸弹的秘密字符串的首地址
 8049485:	ff 75 08             	pushl  0x8(%ebp)					;esp = esp -4;*esp=*(ebp+8);4字节形参入栈;经考证，是我们输入的字符串的首地址
 8049488:	e8 e7 06 00 00       	call   8049b74 <strings_not_equal>	;esp = esp -4;*esp = eip;goto 8049b74;PC值入栈，保存当前PC，转跳到调用函数的首地址
 804948d:	83 c4 10             	add    $0x10,%esp					;R[esp]=R[esp]+16
 8049490:	85 c0                	test   %eax,%eax                    ;R[eax] & R[eax]
 8049492:	74 0c                	je     80494a0 <phase_0+0x29>       ;if( == 0) goto 80494a0
 8049494:	e8 43 09 00 00       	call   8049ddc <explode_bomb>       ;爆炸
 8049499:	b8 00 00 00 00       	mov    $0x0,%eax                    ;R[eax]=0
 804949e:	eb 05                	jmp    80494a5 <phase_0+0x2e>       ;goto 80494a5
 80494a0:	b8 01 00 00 00       	mov    $0x1,%eax                    ;R[eax]=1
 80494a5:	c9                   	leave                               ;movl %ebp, %esp;popl %ebp;恢复调用者的esp（栈顶），此时esp == ebp，此处（栈顶）存储的是调用者的ebp，弹出调用者的ebp到%ebp，从而完整恢复调用者的ebp和esp，释放被调用函数的所有栈空间
 80494a6:	c3                   	ret                                 ;popl %eip;恢复调用者的PC到PC寄存器%eip，然后转跳到那里

080494a7 <phase_1>:
 80494a7:	55                   	push   %ebp                         ;ebp-->栈
 80494a8:	89 e5                	mov    %esp,%ebp                    ;ebp = esp
 80494aa:	83 ec 28             	sub    $0x28,%esp                   ;esp=esp -40;栈顶生长40字节
 80494ad:	c7 45 f4 41 85 2e 11 	movl   $0x112e8541,-0xc(%ebp)       ;*(ebp - 12)=0x112e8541
 80494b4:	db 45 f4             	fildl  -0xc(%ebp)                   ;double *(ebp - 12)-->浮点栈
 80494b7:	dd 5d e8             	fstpl  -0x18(%ebp)                  ;浮点栈-->double *(ebp - 24)
 80494ba:	8d 45 e0             	lea    -0x20(%ebp),%eax             ;eax = ebp - 32
 80494bd:	50                   	push   %eax                         ;eax-->栈
 80494be:	8d 45 e4             	lea    -0x1c(%ebp),%eax             ;eax = ebp - 28
 80494c1:	50                   	push   %eax                         ;eax-->栈
 80494c2:	68 c9 a1 04 08       	push   $0x804a1c9                   ;0x804a1c9-->栈
 80494c7:	ff 75 08             	pushl  0x8(%ebp)                    ;*(ebp + 8)-->栈
 80494ca:	e8 01 fc ff ff       	call   80490d0 <__isoc99_sscanf@plt>;接收输入
 80494cf:	83 c4 10             	add    $0x10,%esp                   ;esp = esp +16
 80494d2:	83 f8 02             	cmp    $0x2,%eax                    ;eax - 2
 80494d5:	74 0c                	je     80494e3 <phase_1+0x3c>       ;if( == 0)goto 80494e3
 80494d7:	e8 00 09 00 00       	call   8049ddc <explode_bomb>       ;
 80494dc:	b8 00 00 00 00       	mov    $0x0,%eax                    ;eax = 0
 80494e1:	eb 2c                	jmp    804950f <phase_1+0x68>       ;goto 804950f
 80494e3:	8d 45 e8             	lea    -0x18(%ebp),%eax             ;eax = ebp - 24
 80494e6:	8b 10                	mov    (%eax),%edx                  ;edx = *eax
 80494e8:	8b 45 e4             	mov    -0x1c(%ebp),%eax             ;eax = *(ebp - 28)
 80494eb:	39 c2                	cmp    %eax,%edx                    ;edx - eax
 80494ed:	75 0f                	jne    80494fe <phase_1+0x57>       ;if( != 0)goto 80494fe
 80494ef:	8d 45 e8             	lea    -0x18(%ebp),%eax             ;eax = ebp - 24
 80494f2:	83 c0 04             	add    $0x4,%eax                    ;eax = eax + 4
 80494f5:	8b 10                	mov    (%eax),%edx                  ;edx = *(eax)
 80494f7:	8b 45 e0             	mov    -0x20(%ebp),%eax             ;eax = *(ebp - 32)
 80494fa:	39 c2                	cmp    %eax,%edx                    ;edx - eax
 80494fc:	74 0c                	je     804950a <phase_1+0x63>       ;if( ==0 )goto 804950a
 80494fe:	e8 d9 08 00 00       	call   8049ddc <explode_bomb>       ;
 8049503:	b8 00 00 00 00       	mov    $0x0,%eax                    ;eax = 0
 8049508:	eb 05                	jmp    804950f <phase_1+0x68>       ;goto 804950f
 804950a:	b8 01 00 00 00       	mov    $0x1,%eax                    ;eax = 1
 804950f:	c9                   	leave  
 8049510:	c3                   	ret    

08049511 <phase_2>:
 8049511:	55                   	push   %ebp                         ;ebp-->栈
 8049512:	89 e5                	mov    %esp,%ebp                    ;ebp = esp
 8049514:	83 ec 38             	sub    $0x38,%esp                   ;esp = esp - 56
 8049517:	83 ec 04             	sub    $0x4,%esp                    ;esp = esp - 4;内存对齐操作
 804951a:	6a 09                	push   $0x9                         ;9-->栈
 804951c:	8d 45 d0             	lea    -0x30(%ebp),%eax             ;eax = ebp - 48
 804951f:	50                   	push   %eax                         ;eax-->栈
 8049520:	ff 75 08             	pushl  0x8(%ebp)                    ;(ebp+8)-->栈;用户输入的字符串
 8049523:	e8 92 05 00 00       	call   8049aba <read_n_numbers>     ;
 8049528:	83 c4 10             	add    $0x10,%esp                   ;esp = esp + 16
 804952b:	85 c0                	test   %eax,%eax                    ;eax & eax
 804952d:	75 07                	jne    8049536 <phase_2+0x25>       ;if( != 0)goto 8049536
 804952f:	b8 00 00 00 00       	mov    $0x0,%eax                    ;eax = 0
 8049534:	eb 59                	jmp    804958f <phase_2+0x7e>       ;goto 804958f
 8049536:	8b 45 d0             	mov    -0x30(%ebp),%eax             ;eax = ebp - 48
 8049539:	3d 88 00 00 00       	cmp    $0x88,%eax                   ;eax - 136
 804953e:	74 0c                	je     804954c <phase_2+0x3b>       ;if( == 0)goto 804954c
 8049540:	e8 97 08 00 00       	call   8049ddc <explode_bomb>       ;
 8049545:	b8 00 00 00 00       	mov    $0x0,%eax                    ;eax = 0
 804954a:	eb 43                	jmp    804958f <phase_2+0x7e>       ;goto 804958f
 804954c:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)              ;*(ebp - 12) = 1
 8049553:	eb 2f                	jmp    8049584 <phase_2+0x73>       ;goto 8049584
 8049555:	8b 45 f4             	mov    -0xc(%ebp),%eax              ;eax = (ebp - 12)
 8049558:	8b 44 85 d0          	mov    -0x30(%ebp,%eax,4),%eax      ;eax = (-48 + ebp + eax*4)
 804955c:	8b 55 f4             	mov    -0xc(%ebp),%edx              ;edx = (ebp - 12)
 804955f:	83 ea 01             	sub    $0x1,%edx                    ;edx = edx -1
 8049562:	8b 54 95 d0          	mov    -0x30(%ebp,%edx,4),%edx      ;edx = (-48 + ebp + edx*4)
 8049566:	8b 4d f4             	mov    -0xc(%ebp),%ecx              ;ecx = (ebp -12)
 8049569:	01 c9                	add    %ecx,%ecx                    ;ecx = ecx +ecx
 804956b:	29 ca                	sub    %ecx,%edx                    ;edx = edx - ecx
 804956d:	83 c2 01             	add    $0x1,%edx                    ;edx = edx +1
 8049570:	39 d0                	cmp    %edx,%eax                    ;eax - edx
 8049572:	74 0c                	je     8049580 <phase_2+0x6f>       ;if( == 0)goto 8049580
 8049574:	e8 63 08 00 00       	call   8049ddc <explode_bomb>       ;
 8049579:	b8 00 00 00 00       	mov    $0x0,%eax                    ;eax = 0
 804957e:	eb 0f                	jmp    804958f <phase_2+0x7e>       ;goto 804958f
 8049580:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)              ;*(ebp -12) = *(ebp -12) +1
 8049584:	83 7d f4 08          	cmpl   $0x8,-0xc(%ebp)              ;*(ebp -12) - 8
 8049588:	7e cb                	jle    8049555 <phase_2+0x44>       ;if( <= 0)goto 8049555
 804958a:	b8 01 00 00 00       	mov    $0x1,%eax                    ;eax = 1
 804958f:	c9                   	leave  
 8049590:	c3                   	ret    

08049591 <phase_3>:
 8049591:	55                   	push   %ebp                         ;ebp-->栈
 8049592:	89 e5                	mov    %esp,%ebp                    ;ebp = esp
 8049594:	83 ec 18             	sub    $0x18,%esp                   ;esp = esp - 24
 8049597:	8d 45 e8             	lea    -0x18(%ebp),%eax             ;eax = &M[ebp - 24]
 804959a:	50                   	push   %eax                         ;eax-->栈
 804959b:	8d 45 ec             	lea    -0x14(%ebp),%eax             ;eax = &M[ebp - 20]
 804959e:	50                   	push   %eax                         ;eax-->栈
 804959f:	68 c9 a1 04 08       	push   $0x804a1c9                   ;0x804a1c9 -->栈
 80495a4:	ff 75 08             	pushl  0x8(%ebp)                    ;ebp + 8 -->栈
 80495a7:	e8 24 fb ff ff       	call   80490d0 <__isoc99_sscanf@plt>;
 80495ac:	83 c4 10             	add    $0x10,%esp                   ;esp = esp + 16
 80495af:	89 45 f0             	mov    %eax,-0x10(%ebp)				;eax = *(ebp -16)
 80495b2:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp)				;*(ebp -16) - 1
 80495b6:	7f 0f                	jg     80495c7 <phase_3+0x36>		;if( > 0)goto 80495c7
 80495b8:	e8 1f 08 00 00       	call   8049ddc <explode_bomb>		;
 80495bd:	b8 00 00 00 00       	mov    $0x0,%eax					;eax = 0
 80495c2:	e9 8c 00 00 00       	jmp    8049653 <phase_3+0xc2>		;goto 8049653
 80495c7:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)				;*(ebp - 12)=0
 80495ce:	8b 45 ec             	mov    -0x14(%ebp),%eax				;*(ebp - 20)=eax
 80495d1:	83 e8 7d             	sub    $0x7d,%eax					;eax = eax - 125
 80495d4:	83 f8 08             	cmp    $0x8,%eax					;eax - 8
 80495d7:	77 55                	ja     804962e <phase_3+0x9d>		;if((unsigned)  > 0)goto 804962e
 80495d9:	8b 04 85 d0 a1 04 08 	mov    0x804a1d0(,%eax,4),%eax		;eax = *(0x804a1d0 + eax*4)
 80495e0:	ff e0                	jmp    *%eax						;goto *eax
 80495e2:	81 45 f4 54 03 00 00 	addl   $0x354,-0xc(%ebp)			;*(ebp - 12) = *(ebp - 12) + 0x354
 80495e9:	81 45 f4 7c 03 00 00 	addl   $0x37c,-0xc(%ebp)			;*(ebp - 12) = *(ebp - 12) + 0x37c
 80495f0:	81 6d f4 54 03 00 00 	subl   $0x354,-0xc(%ebp)			;*(ebp - 12) = *(ebp - 12) + 0x354
 80495f7:	81 45 f4 54 03 00 00 	addl   $0x354,-0xc(%ebp)			;*(ebp - 12) = *(ebp - 12) + 0x354
 80495fe:	81 45 f4 7c 03 00 00 	addl   $0x37c,-0xc(%ebp)			;*(ebp - 12) = *(ebp - 12) + 0x37c
 8049605:	81 6d f4 54 03 00 00 	subl   $0x354,-0xc(%ebp)			;*(ebp - 12) = *(ebp - 12) + 0x354
 804960c:	81 45 f4 7c 03 00 00 	addl   $0x37c,-0xc(%ebp)			;*(ebp - 12) = *(ebp - 12) + 0x37c
 8049613:	81 6d f4 7c 03 00 00 	subl   $0x37c,-0xc(%ebp)			;*(ebp - 12) = *(ebp - 12) + 0x37c
 804961a:	81 45 f4 54 03 00 00 	addl   $0x354,-0xc(%ebp)			;*(ebp - 12) = *(ebp - 12) + 0x354
 8049621:	90                   	nop									;机器空操作
 8049622:	8b 45 ec             	mov    -0x14(%ebp),%eax				;eax = *(ebp - 20)
 8049625:	3d 83 00 00 00       	cmp    $0x83,%eax					;eax - 0x83
 804962a:	7f 16                	jg     8049642 <phase_3+0xb1>		;if( > 0)goto 8049642
 804962c:	eb 0c                	jmp    804963a <phase_3+0xa9>		;goto 804963a
 804962e:	e8 a9 07 00 00       	call   8049ddc <explode_bomb>		;
 8049633:	b8 00 00 00 00       	mov    $0x0,%eax					;eax = 0
 8049638:	eb 19                	jmp    8049653 <phase_3+0xc2>		;goto 8049653
 804963a:	8b 45 e8             	mov    -0x18(%ebp),%eax				;eax = *(ebp - 0x18)
 804963d:	39 45 f4             	cmp    %eax,-0xc(%ebp)				;*(ebp - 12) - eax
 8049640:	74 0c                	je     804964e <phase_3+0xbd>		;if( == 0)goto 804964e
 8049642:	e8 95 07 00 00       	call   8049ddc <explode_bomb>		;
 8049647:	b8 00 00 00 00       	mov    $0x0,%eax					;eax = 0
 804964c:	eb 05                	jmp    8049653 <phase_3+0xc2>		;goto 8049653
 804964e:	b8 01 00 00 00       	mov    $0x1,%eax					;eax = 1
 8049653:	c9                   	leave  
 8049654:	c3                   	ret    

08049655 <func4>:
 8049655:	55                   	push   %ebp
 8049656:	89 e5                	mov    %esp,%ebp
 8049658:	53                   	push   %ebx
 8049659:	83 ec 04             	sub    $0x4,%esp					;esp = 4
 804965c:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)				;*(ebp + 8) - 0
 8049660:	7f 07                	jg     8049669 <func4+0x14>			;if( > 0)goto 8049669
 8049662:	b8 03 00 00 00       	mov    $0x3,%eax					;eax = 3
 8049667:	eb 37                	jmp    80496a0 <func4+0x4b>			;goto 80496a0
 8049669:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)				;*(ebp - 8) - 1
 804966d:	75 07                	jne    8049676 <func4+0x21>			;if( != 0)goto 8049676
 804966f:	b8 1a 00 00 00       	mov    $0x1a,%eax					;eax = 0x1a
 8049674:	eb 2a                	jmp    80496a0 <func4+0x4b>			;goto 80496a0
 8049676:	8b 45 08             	mov    0x8(%ebp),%eax				;eax = *(ebp +8)
 8049679:	83 e8 01             	sub    $0x1,%eax					;eax = eax -1
 804967c:	83 ec 0c             	sub    $0xc,%esp					;esp = esp -12
 804967f:	50                   	push   %eax							;
 8049680:	e8 d0 ff ff ff       	call   8049655 <func4>				;
 8049685:	83 c4 10             	add    $0x10,%esp					;esp = esp +16
 8049688:	89 c3                	mov    %eax,%ebx					;ebx = eax
 804968a:	8b 45 08             	mov    0x8(%ebp),%eax				;eax = *(ebp + 8)
 804968d:	83 e8 02             	sub    $0x2,%eax					;eax = eax -2
 8049690:	83 ec 0c             	sub    $0xc,%esp					;esp = esp -12
 8049693:	50                   	push   %eax							;
 8049694:	e8 bc ff ff ff       	call   8049655 <func4>				;
 8049699:	83 c4 10             	add    $0x10,%esp					;esp = esp +16
 804969c:	d1 f8                	sar    %eax							;eax = eax >>1
 804969e:	01 d8                	add    %ebx,%eax					;eax = eax + ebx
 80496a0:	8b 5d fc             	mov    -0x4(%ebp),%ebx				;ebx = *(ebp -4)
 80496a3:	c9                   	leave  
 80496a4:	c3                   	ret    

080496a5 <phase_4>:
 80496a5:	55                   	push   %ebp
 80496a6:	89 e5                	mov    %esp,%ebp
 80496a8:	83 ec 18             	sub    $0x18,%esp					;esp = esp - 0x18
 80496ab:	8d 45 e8             	lea    -0x18(%ebp),%eax				;eax = &M[ebp - 0x18]
 80496ae:	50                   	push   %eax							;
 80496af:	8d 45 ec             	lea    -0x14(%ebp),%eax				;eax = &M[ebp - 0x14]
 80496b2:	50                   	push   %eax							;
 80496b3:	68 c9 a1 04 08       	push   $0x804a1c9					;
 80496b8:	ff 75 08             	pushl  0x8(%ebp)					;
 80496bb:	e8 10 fa ff ff       	call   80490d0 <__isoc99_sscanf@plt>;
 80496c0:	83 c4 10             	add    $0x10,%esp					;esp = esp +16
 80496c3:	89 45 f4             	mov    %eax,-0xc(%ebp)				;*(ebp-12)=eax
 80496c6:	83 7d f4 02          	cmpl   $0x2,-0xc(%ebp)				;*(ebp-12) - 2
 80496ca:	75 08                	jne    80496d4 <phase_4+0x2f>		;if( !=0)goto 80496d4
 80496cc:	8b 45 ec             	mov    -0x14(%ebp),%eax				;eax = *(ebp - 0x14)
 80496cf:	83 f8 07             	cmp    $0x7,%eax					;eax - 7
 80496d2:	7f 0c                	jg     80496e0 <phase_4+0x3b>		;if( > 0)goto 80496e0
 80496d4:	e8 03 07 00 00       	call   8049ddc <explode_bomb>		;
 80496d9:	b8 00 00 00 00       	mov    $0x0,%eax					;
 80496de:	eb 2b                	jmp    804970b <phase_4+0x66>		;goto 804970b
 80496e0:	8b 45 ec             	mov    -0x14(%ebp),%eax				;eax = *(ebp - 0x14)
 80496e3:	83 ec 0c             	sub    $0xc,%esp					;esp = esp -12
 80496e6:	50                   	push   %eax							;
 80496e7:	e8 69 ff ff ff       	call   8049655 <func4>				;
 80496ec:	83 c4 10             	add    $0x10,%esp					;esp = esp + 16
 80496ef:	89 45 f0             	mov    %eax,-0x10(%ebp)				;*(ebp - 16) = eax
 80496f2:	8b 45 e8             	mov    -0x18(%ebp),%eax				;eax = *(ebp - 24)
 80496f5:	39 45 f0             	cmp    %eax,-0x10(%ebp)				;*(ebp - 16) - eax
 80496f8:	74 0c                	je     8049706 <phase_4+0x61>		;if( == 0)goto 8049706
 80496fa:	e8 dd 06 00 00       	call   8049ddc <explode_bomb>		;
 80496ff:	b8 00 00 00 00       	mov    $0x0,%eax					;eax = 0
 8049704:	eb 05                	jmp    804970b <phase_4+0x66>		;goto 804970b
 8049706:	b8 01 00 00 00       	mov    $0x1,%eax					;eax = 1
 804970b:	c9                   	leave  
 804970c:	c3                   	ret    

0804970d <phase_5>:
 804970d:	55                   	push   %ebp
 804970e:	89 e5                	mov    %esp,%ebp
 8049710:	83 ec 18             	sub    $0x18,%esp					;esp = esp -0x18
 8049713:	83 ec 0c             	sub    $0xc,%esp					;esp = esp -12
 8049716:	ff 75 08             	pushl  0x8(%ebp)					;
 8049719:	e8 2a 04 00 00       	call   8049b48 <string_length>		;
 804971e:	83 c4 10             	add    $0x10,%esp					;esp = esp + 16
 8049721:	89 45 ec             	mov    %eax,-0x14(%ebp)				;*(ebp - 0x14)=eax
 8049724:	83 7d ec 08          	cmpl   $0x8,-0x14(%ebp)				;*(ebp - 0x14) - 8
 8049728:	74 0c                	je     8049736 <phase_5+0x29>		;if( == 0)goto 8049736
 804972a:	e8 ad 06 00 00       	call   8049ddc <explode_bomb>		;
 804972f:	b8 00 00 00 00       	mov    $0x0,%eax					;eax = 0
 8049734:	eb 4c                	jmp    8049782 <phase_5+0x75>		;goto 8049782
 8049736:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)				;*(ebp - 16) = 0
 804973d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)				;*(ebp - 12) = 0
 8049744:	eb 1f                	jmp    8049765 <phase_5+0x58>		;goto 8049765
 8049746:	8b 55 f4             	mov    -0xc(%ebp),%edx				;edx = *(ebp -12)
 8049749:	8b 45 08             	mov    0x8(%ebp),%eax				;eax = *(ebp +8)
 804974c:	01 d0                	add    %edx,%eax					;eax = eax +edx
 804974e:	0f b6 00             	movzbl (%eax),%eax					;eax = (unsigned long)*eax
 8049751:	0f be c0             	movsbl %al,%eax						;eax = (signed long)al
 8049754:	83 e0 0f             	and    $0xf,%eax					;eax = eax & 15
 8049757:	8b 04 85 00 c2 04 08 	mov    0x804c200(,%eax,4),%eax		;eax = *(0x804c200 + eax*4)
 804975e:	01 45 f0             	add    %eax,-0x10(%ebp)				;*(ebp - 16) = eax
 8049761:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)				;*(ebp - 12) = 1
 8049765:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)				;*(ebp - 12) - 7
 8049769:	7e db                	jle    8049746 <phase_5+0x39>		;if( <= 0)goto 8049746
 804976b:	83 7d f0 3f          	cmpl   $0x3f,-0x10(%ebp)			;*(ebp - 16) - 0x3f
 804976f:	74 0c                	je     804977d <phase_5+0x70>		;if( == 0)goto 804977d
 8049771:	e8 66 06 00 00       	call   8049ddc <explode_bomb>		;
 8049776:	b8 00 00 00 00       	mov    $0x0,%eax					;eax = 0
 804977b:	eb 05                	jmp    8049782 <phase_5+0x75>		;goto 8049782
 804977d:	b8 01 00 00 00       	mov    $0x1,%eax					;eax = 1
 8049782:	c9                   	leave  
 8049783:	c3                   	ret    

08049784 <phase_6>:
 8049784:	55                   	push   %ebp
 8049785:	89 e5                	mov    %esp,%ebp
 8049787:	83 ec 58             	sub    $0x58,%esp					;esp = esp - 0x58
 804978a:	c7 45 e8 2c c1 04 08 	movl   $0x804c12c,-0x18(%ebp)		;*(ebp - 24)=0x804c12c
 8049791:	83 ec 04             	sub    $0x4,%esp					;esp  = esp - 4
 8049794:	6a 07                	push   $0x7							;
 8049796:	8d 45 cc             	lea    -0x34(%ebp),%eax				;eax = &M[ebp - 0x34]
 8049799:	50                   	push   %eax							;
 804979a:	ff 75 08             	pushl  0x8(%ebp)					;
 804979d:	e8 18 03 00 00       	call   8049aba <read_n_numbers>		;
 80497a2:	83 c4 10             	add    $0x10,%esp					;esp = esp +16
 80497a5:	85 c0                	test   %eax,%eax					;eax & eax
 80497a7:	75 0a                	jne    80497b3 <phase_6+0x2f>		;if( !=0)goto 80497b3
 80497a9:	b8 00 00 00 00       	mov    $0x0,%eax					;eax = 0
 80497ae:	e9 37 01 00 00       	jmp    80498ea <phase_6+0x166>		;goto 80498ea
 80497b3:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)				;*(ebp - 16) = 0
 80497ba:	eb 60                	jmp    804981c <phase_6+0x98>		;goto 804981c
 80497bc:	8b 45 f0             	mov    -0x10(%ebp),%eax				;eax = *(ebp - 16)
 80497bf:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax		;eax = *(ebp -0x34 + eax*4)
 80497c3:	85 c0                	test   %eax,%eax					;eax & eax
 80497c5:	7e 0c                	jle    80497d3 <phase_6+0x4f>		;if( <= 0)goto 80497d3
 80497c7:	8b 45 f0             	mov    -0x10(%ebp),%eax				;eax = *(ebp - 16)
 80497ca:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax		;eax = *(ebp -0x34 + eax*4)
 80497ce:	83 f8 07             	cmp    $0x7,%eax					;eax - 7
 80497d1:	7e 0f                	jle    80497e2 <phase_6+0x5e>		;if( <= 0)goto 80497e2
 80497d3:	e8 04 06 00 00       	call   8049ddc <explode_bomb>		;
 80497d8:	b8 00 00 00 00       	mov    $0x0,%eax					;eax = 0
 80497dd:	e9 08 01 00 00       	jmp    80498ea <phase_6+0x166>		;goto 80498ea
 80497e2:	8b 45 f0             	mov    -0x10(%ebp),%eax				;eax = *(ebp -16)
 80497e5:	83 c0 01             	add    $0x1,%eax					;eax = 1
 80497e8:	89 45 ec             	mov    %eax,-0x14(%ebp)				;eax = *(ebp - 20)
 80497eb:	eb 25                	jmp    8049812 <phase_6+0x8e>		;goto 8049812
 80497ed:	8b 45 f0             	mov    -0x10(%ebp),%eax				;eax = *(ebp - 16)
 80497f0:	8b 54 85 cc          	mov    -0x34(%ebp,%eax,4),%edx		;edx = *(ebp -0x34 + eax*4)
 80497f4:	8b 45 ec             	mov    -0x14(%ebp),%eax				;eax = *(ebp - 20)
 80497f7:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax		;eax = *(ebp -0x34 + eax*4)
 80497fb:	39 c2                	cmp    %eax,%edx					;edx - eax
 80497fd:	75 0f                	jne    804980e <phase_6+0x8a>		;if( != 0)goto 804980e
 80497ff:	e8 d8 05 00 00       	call   8049ddc <explode_bomb>		;
 8049804:	b8 00 00 00 00       	mov    $0x0,%eax					;eax = 0
 8049809:	e9 dc 00 00 00       	jmp    80498ea <phase_6+0x166>		;goto 80498ea
 804980e:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)				;*(ebp - 20) = *(ebp - 20) +1
 8049812:	83 7d ec 06          	cmpl   $0x6,-0x14(%ebp)				;*(ebp - 20) - 6
 8049816:	7e d5                	jle    80497ed <phase_6+0x69>		;if( <= 0)goto 80497ed
 8049818:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)				;*(ebp - 16) = *(ebp - 16) +1
 804981c:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp)				;*(ebp - 16) - 6
 8049820:	7e 9a                	jle    80497bc <phase_6+0x38>		;if( <= 0)goto 80497bc
 8049822:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)				;*(ebp - 16) = 0
 8049829:	eb 36                	jmp    8049861 <phase_6+0xdd>		;goto 8049861
 804982b:	8b 45 e8             	mov    -0x18(%ebp),%eax				;eax = *(ebp - 24)
 804982e:	89 45 f4             	mov    %eax,-0xc(%ebp)				;*(ebp - 12) = eax
 8049831:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)				;*(ebp - 20) = 1
 8049838:	eb 0d                	jmp    8049847 <phase_6+0xc3>		;goto 8049847
 804983a:	8b 45 f4             	mov    -0xc(%ebp),%eax				;eax = *(ebp - 12)
 804983d:	8b 40 08             	mov    0x8(%eax),%eax				;eax = *(eax + 8)
 8049840:	89 45 f4             	mov    %eax,-0xc(%ebp)				;*(ebp - 12) = eax
 8049843:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)				;*(ebp - 20) = *(ebp - 20) + 1
 8049847:	8b 45 f0             	mov    -0x10(%ebp),%eax				;eax = *(ebp - 16)
 804984a:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax		;eax = *(ebp -0x34 + eax*4)
 804984e:	39 45 ec             	cmp    %eax,-0x14(%ebp)				;*(ebp - 20) - eax
 8049851:	7c e7                	jl     804983a <phase_6+0xb6>		;if( < 0)goto 804983a
 8049853:	8b 45 f0             	mov    -0x10(%ebp),%eax				;eax = *(ebp - 16)
 8049856:	8b 55 f4             	mov    -0xc(%ebp),%edx				;edx = *(ebp - 12)
 8049859:	89 54 85 b0          	mov    %edx,-0x50(%ebp,%eax,4)		;*(ebp -0x50 + eax*4) = edx
 804985d:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)				;*(ebp - 16) = *(ebp - 16) + 1
 8049861:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp)				;*(ebp - 16) - 6
 8049865:	7e c4                	jle    804982b <phase_6+0xa7>		;if( <= 0)goto 804982b
 8049867:	8b 45 b0             	mov    -0x50(%ebp),%eax				;eax = *(ebp - 0x50)
 804986a:	89 45 e8             	mov    %eax,-0x18(%ebp)				;*(ebp - 24) = eax
 804986d:	8b 45 e8             	mov    -0x18(%ebp),%eax				;eax = *(ebp - 24)
 8049870:	89 45 f4             	mov    %eax,-0xc(%ebp)				;*(ebp - 12) = eax
 8049873:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)				;*(ebp - 16) = 1
 804987a:	eb 1a                	jmp    8049896 <phase_6+0x112>		;goto 8049896
 804987c:	8b 45 f0             	mov    -0x10(%ebp),%eax				;eax = *(ebp - 16)
 804987f:	8b 54 85 b0          	mov    -0x50(%ebp,%eax,4),%edx		;edx = *(ebp -0x50 + eax*4)
 8049883:	8b 45 f4             	mov    -0xc(%ebp),%eax				;eax = *(ebp - 12)
 8049886:	89 50 08             	mov    %edx,0x8(%eax)				;*(eax + 8) = edx
 8049889:	8b 45 f4             	mov    -0xc(%ebp),%eax				;eax = *(ebp - 12)
 804988c:	8b 40 08             	mov    0x8(%eax),%eax				;eax = *(eax + 8)
 804988f:	89 45 f4             	mov    %eax,-0xc(%ebp)				;*(ebp - 12) = eax
 8049892:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)				;*(ebp - 16) = *(ebp - 16) + 1
 8049896:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp)				;*(ebp - 16) - 6
 804989a:	7e e0                	jle    804987c <phase_6+0xf8>		;if( <= 0)goto 804987c
 804989c:	8b 45 f4             	mov    -0xc(%ebp),%eax				;eax = *(ebp - 12)
 804989f:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)				;*(eax + 8) = 0
 80498a6:	8b 45 e8             	mov    -0x18(%ebp),%eax				;eax = *(ebp - 24)
 80498a9:	89 45 f4             	mov    %eax,-0xc(%ebp)				;*(ebp - 12) = eax
 80498ac:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)				;*(ebp - 16) = 0
 80498b3:	eb 2a                	jmp    80498df <phase_6+0x15b>		;goto 80498df
 80498b5:	8b 45 f4             	mov    -0xc(%ebp),%eax				;eax = *(ebp - 12)
 80498b8:	8b 10                	mov    (%eax),%edx					;edx = *eax
 80498ba:	8b 45 f4             	mov    -0xc(%ebp),%eax				;eax = *(ebp - 12)
 80498bd:	8b 40 08             	mov    0x8(%eax),%eax				;eax = *(eax + 8)
 80498c0:	8b 00                	mov    (%eax),%eax					;eax = *eax
 80498c2:	39 c2                	cmp    %eax,%edx					;edx - eax
 80498c4:	7e 0c                	jle    80498d2 <phase_6+0x14e>		;if( <= 0)goto 80498d2
 80498c6:	e8 11 05 00 00       	call   8049ddc <explode_bomb>		;
 80498cb:	b8 00 00 00 00       	mov    $0x0,%eax					;eax = 0
 80498d0:	eb 18                	jmp    80498ea <phase_6+0x166>		;goto 80498ea
 80498d2:	8b 45 f4             	mov    -0xc(%ebp),%eax				;eax = *(ebp - 12)
 80498d5:	8b 40 08             	mov    0x8(%eax),%eax				;eax = *(eax + 8)
 80498d8:	89 45 f4             	mov    %eax,-0xc(%ebp)				;*(ebp - 12) = eax
 80498db:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)				;*(ebp - 16) = *(ebp - 16) + 1
 80498df:	83 7d f0 05          	cmpl   $0x5,-0x10(%ebp)				;*(ebp - 16) - 5
 80498e3:	7e d0                	jle    80498b5 <phase_6+0x131>		;if( <= 0)goto 80498b5
 80498e5:	b8 01 00 00 00       	mov    $0x1,%eax					;eax = 1
 80498ea:	c9                   	leave  
 80498eb:	c3                   	ret    

080498ec <fun7>:
 80498ec:	55                   	push   %ebp
 80498ed:	89 e5                	mov    %esp,%ebp
 80498ef:	83 ec 08             	sub    $0x8,%esp					;esp = esp - 8
 80498f2:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)				;*(ebp + 8) - 0
 80498f6:	75 07                	jne    80498ff <fun7+0x13>			;if( != 0)goto 80498ff
 80498f8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax				;eax = 0xffffffff
 80498fd:	eb 4e                	jmp    804994d <fun7+0x61>			;goto 804994d
 80498ff:	8b 45 08             	mov    0x8(%ebp),%eax				;eax = *(ebp + 8)
 8049902:	8b 00                	mov    (%eax),%eax					;eax = *eax
 8049904:	39 45 0c             	cmp    %eax,0xc(%ebp)				;*(ebp - 12) - eax
 8049907:	7d 19                	jge    8049922 <fun7+0x36>			;if( >= 0)goto 8049922
 8049909:	8b 45 08             	mov    0x8(%ebp),%eax				;eax = *(ebp + 8)
 804990c:	8b 40 04             	mov    0x4(%eax),%eax				;eax = *(eax + 4)
 804990f:	83 ec 08             	sub    $0x8,%esp					;esp = esp - 8
 8049912:	ff 75 0c             	pushl  0xc(%ebp)					;
 8049915:	50                   	push   %eax							;
 8049916:	e8 d1 ff ff ff       	call   80498ec <fun7>				;
 804991b:	83 c4 10             	add    $0x10,%esp					;esp = esp - 16
 804991e:	01 c0                	add    %eax,%eax					;eax = eax + eax
 8049920:	eb 2b                	jmp    804994d <fun7+0x61>			;goto 804994d
 8049922:	8b 45 08             	mov    0x8(%ebp),%eax				;eax = *(ebp + 8)
 8049925:	8b 00                	mov    (%eax),%eax					;eax = *eax
 8049927:	39 45 0c             	cmp    %eax,0xc(%ebp)				;*(ebp + 12) - eax
 804992a:	75 07                	jne    8049933 <fun7+0x47>			;if( != 0)goto 8049933
 804992c:	b8 00 00 00 00       	mov    $0x0,%eax					;eax = 0
 8049931:	eb 1a                	jmp    804994d <fun7+0x61>			;goto 804994d
 8049933:	8b 45 08             	mov    0x8(%ebp),%eax				;eax = *(ebp + 8)
 8049936:	8b 40 08             	mov    0x8(%eax),%eax				;eax = *(eax + 8)
 8049939:	83 ec 08             	sub    $0x8,%esp					;esp = esp - 8
 804993c:	ff 75 0c             	pushl  0xc(%ebp)					;
 804993f:	50                   	push   %eax							;
 8049940:	e8 a7 ff ff ff       	call   80498ec <fun7>				;
 8049945:	83 c4 10             	add    $0x10,%esp					;esp = esp +16
 8049948:	01 c0                	add    %eax,%eax					;eax = eax + eax
 804994a:	83 c0 01             	add    $0x1,%eax					;eax = eax + 1
 804994d:	c9                   	leave  
 804994e:	c3                   	ret    

0804994f <secret_phase>:
 804994f:	55                   	push   %ebp
 8049950:	89 e5                	mov    %esp,%ebp
 8049952:	83 ec 18             	sub    $0x18,%esp					;esp = esp - 24
 8049955:	e8 3f 03 00 00       	call   8049c99 <read_line>			;
 804995a:	89 45 f4             	mov    %eax,-0xc(%ebp)				;*(ebp - 12) = eax
 804995d:	83 ec 0c             	sub    $0xc,%esp					;esp = esp - 12
 8049960:	ff 75 f4             	pushl  -0xc(%ebp)					;
 8049963:	e8 98 f7 ff ff       	call   8049100 <atoi@plt>			;
 8049968:	83 c4 10             	add    $0x10,%esp					;esp = esp + 16
 804996b:	89 45 f0             	mov    %eax,-0x10(%ebp)				;*(ebp - 16) = eax
 804996e:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)				;*(ebp - 16) - 0
 8049972:	7e 09                	jle    804997d <secret_phase+0x2e>	;if( <= 0)goto 804997d
 8049974:	81 7d f0 e9 03 00 00 	cmpl   $0x3e9,-0x10(%ebp)			;*(ebp - 16) - 0x3e9
 804997b:	7e 0c                	jle    8049989 <secret_phase+0x3a>	;if( <= 0)goto 8049989
 804997d:	e8 5a 04 00 00       	call   8049ddc <explode_bomb>		;
 8049982:	b8 00 00 00 00       	mov    $0x0,%eax					;eax = 0
 8049987:	eb 42                	jmp    80499cb <secret_phase+0x7c>	;goto 80499cb
 8049989:	83 ec 08             	sub    $0x8,%esp					;esp = esp - 8
 804998c:	ff 75 f0             	pushl  -0x10(%ebp)					;
 804998f:	68 e0 c1 04 08       	push   $0x804c1e0					;
 8049994:	e8 53 ff ff ff       	call   80498ec <fun7>				;
 8049999:	83 c4 10             	add    $0x10,%esp					;esp = esp + 16
 804999c:	89 45 ec             	mov    %eax,-0x14(%ebp)				;*(ebp - 20) = eax
 804999f:	83 7d ec 02          	cmpl   $0x2,-0x14(%ebp)				;*(ebp - 20) - 2
 80499a3:	74 0c                	je     80499b1 <secret_phase+0x62>	;if( == 0)goto 80499b1
 80499a5:	e8 32 04 00 00       	call   8049ddc <explode_bomb>		;
 80499aa:	b8 00 00 00 00       	mov    $0x0,%eax					;eax = 0
 80499af:	eb 1a                	jmp    80499cb <secret_phase+0x7c>	;goto 80499cb
 80499b1:	83 ec 0c             	sub    $0xc,%esp					;esp = esp - 12
 80499b4:	68 f4 a1 04 08       	push   $0x804a1f4					;
 80499b9:	e8 d2 f6 ff ff       	call   8049090 <puts@plt>			;
 80499be:	83 c4 10             	add    $0x10,%esp					;esp = esp + 16
 80499c1:	e8 3f 04 00 00       	call   8049e05 <phase_defused>		;
 80499c6:	b8 01 00 00 00       	mov    $0x1,%eax					;eax = 1
 80499cb:	c9                   	leave  
 80499cc:	c3                   	ret    

080499cd <sig_handler>:
 80499cd:	55                   	push   %ebp
 80499ce:	89 e5                	mov    %esp,%ebp
 80499d0:	83 ec 08             	sub    $0x8,%esp
 80499d3:	83 ec 0c             	sub    $0xc,%esp
 80499d6:	68 1c a2 04 08       	push   $0x804a21c
 80499db:	e8 b0 f6 ff ff       	call   8049090 <puts@plt>
 80499e0:	83 c4 10             	add    $0x10,%esp
 80499e3:	83 ec 0c             	sub    $0xc,%esp
 80499e6:	6a 03                	push   $0x3
 80499e8:	e8 83 f6 ff ff       	call   8049070 <sleep@plt>
 80499ed:	83 c4 10             	add    $0x10,%esp
 80499f0:	83 ec 0c             	sub    $0xc,%esp
 80499f3:	68 54 a2 04 08       	push   $0x804a254
 80499f8:	e8 33 f6 ff ff       	call   8049030 <printf@plt>
 80499fd:	83 c4 10             	add    $0x10,%esp
 8049a00:	a1 44 c2 04 08       	mov    0x804c244,%eax
 8049a05:	83 ec 0c             	sub    $0xc,%esp
 8049a08:	50                   	push   %eax
 8049a09:	e8 32 f6 ff ff       	call   8049040 <fflush@plt>
 8049a0e:	83 c4 10             	add    $0x10,%esp
 8049a11:	83 ec 0c             	sub    $0xc,%esp
 8049a14:	6a 01                	push   $0x1
 8049a16:	e8 55 f6 ff ff       	call   8049070 <sleep@plt>
 8049a1b:	83 c4 10             	add    $0x10,%esp
 8049a1e:	83 ec 0c             	sub    $0xc,%esp
 8049a21:	68 5c a2 04 08       	push   $0x804a25c
 8049a26:	e8 65 f6 ff ff       	call   8049090 <puts@plt>
 8049a2b:	83 c4 10             	add    $0x10,%esp
 8049a2e:	83 ec 0c             	sub    $0xc,%esp
 8049a31:	6a 10                	push   $0x10
 8049a33:	e8 68 f6 ff ff       	call   80490a0 <exit@plt>

08049a38 <invalid_phase>:
 8049a38:	55                   	push   %ebp
 8049a39:	89 e5                	mov    %esp,%ebp
 8049a3b:	83 ec 08             	sub    $0x8,%esp
 8049a3e:	83 ec 08             	sub    $0x8,%esp
 8049a41:	ff 75 08             	pushl  0x8(%ebp)
 8049a44:	68 64 a2 04 08       	push   $0x804a264
 8049a49:	e8 e2 f5 ff ff       	call   8049030 <printf@plt>
 8049a4e:	83 c4 10             	add    $0x10,%esp
 8049a51:	83 ec 0c             	sub    $0xc,%esp
 8049a54:	6a 08                	push   $0x8
 8049a56:	e8 45 f6 ff ff       	call   80490a0 <exit@plt>

08049a5b <read_six_numbers>:
 8049a5b:	55                   	push   %ebp
 8049a5c:	89 e5                	mov    %esp,%ebp
 8049a5e:	56                   	push   %esi
 8049a5f:	53                   	push   %ebx
 8049a60:	83 ec 10             	sub    $0x10,%esp
 8049a63:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049a66:	8d 70 14             	lea    0x14(%eax),%esi
 8049a69:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049a6c:	8d 58 10             	lea    0x10(%eax),%ebx
 8049a6f:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049a72:	8d 48 0c             	lea    0xc(%eax),%ecx
 8049a75:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049a78:	8d 50 08             	lea    0x8(%eax),%edx
 8049a7b:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049a7e:	83 c0 04             	add    $0x4,%eax
 8049a81:	56                   	push   %esi
 8049a82:	53                   	push   %ebx
 8049a83:	51                   	push   %ecx
 8049a84:	52                   	push   %edx
 8049a85:	50                   	push   %eax
 8049a86:	ff 75 0c             	pushl  0xc(%ebp)
 8049a89:	68 75 a2 04 08       	push   $0x804a275
 8049a8e:	ff 75 08             	pushl  0x8(%ebp)
 8049a91:	e8 3a f6 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049a96:	83 c4 20             	add    $0x20,%esp
 8049a99:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049a9c:	83 7d f4 05          	cmpl   $0x5,-0xc(%ebp)
 8049aa0:	7f 0c                	jg     8049aae <read_six_numbers+0x53>
 8049aa2:	e8 35 03 00 00       	call   8049ddc <explode_bomb>
 8049aa7:	b8 00 00 00 00       	mov    $0x0,%eax
 8049aac:	eb 05                	jmp    8049ab3 <read_six_numbers+0x58>
 8049aae:	b8 01 00 00 00       	mov    $0x1,%eax
 8049ab3:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049ab6:	5b                   	pop    %ebx
 8049ab7:	5e                   	pop    %esi
 8049ab8:	5d                   	pop    %ebp
 8049ab9:	c3                   	ret    

08049aba <read_n_numbers>:
 8049aba:	55                   	push   %ebp
 8049abb:	89 e5                	mov    %esp,%ebp
 8049abd:	83 ec 18             	sub    $0x18,%esp						;栈生长24字节
 8049ac0:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)					;由此可见，内存(ebp - 16)~(ebp - 12)是一个long型变量，不妨记为a
 8049ac7:	eb 70                	jmp    8049b39 <read_n_numbers+0x7f>
 8049ac9:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8049acd:	75 18                	jne    8049ae7 <read_n_numbers+0x2d>	;如果(0 != a)则转跳
 8049acf:	83 ec 08             	sub    $0x8,%esp						;栈顶生长8字节
 8049ad2:	68 87 a2 04 08       	push   $0x804a287						;压入一个地址
 8049ad7:	ff 75 08             	pushl  0x8(%ebp)						;压入调用者的第一个参数
 8049ada:	e8 11 f6 ff ff       	call   80490f0 <strtok@plt>				;调用函数
 8049adf:	83 c4 10             	add    $0x10,%esp						;消灭为传参而设置的变量空间
 8049ae2:	89 45 f4             	mov    %eax,-0xc(%ebp)					;拷贝返回值;由此可见，内存(ebp - 12)~(ebp - 8)是一个long型变量，不妨记为b
 8049ae5:	eb 15                	jmp    8049afc <read_n_numbers+0x42>	;
 8049ae7:	83 ec 08             	sub    $0x8,%esp						;内存对齐操作
 8049aea:	68 87 a2 04 08       	push   $0x804a287						;压入一个地址
 8049aef:	6a 00                	push   $0x0								;压入NULL
 8049af1:	e8 fa f5 ff ff       	call   80490f0 <strtok@plt>				;调用完后eax存储一个字符串的首地址
 8049af6:	83 c4 10             	add    $0x10,%esp
 8049af9:	89 45 f4             	mov    %eax,-0xc(%ebp)					;b = strtok(NULL,0x804a287);
 8049afc:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)					;
 8049b00:	74 27                	je     8049b29 <read_n_numbers+0x6f>	;if(b - 0 == 0)goto 8049b29;爆炸！
 8049b02:	8b 45 f0             	mov    -0x10(%ebp),%eax					;eax = a
 8049b05:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx				;edx = eax*4
 8049b0c:	8b 45 0c             	mov    0xc(%ebp),%eax					;eax = para2;读入第二个参数
 8049b0f:	01 d0                	add    %edx,%eax						;eax = edx + eax
 8049b11:	83 ec 04             	sub    $0x4,%esp						;栈顶生长4字节，内存对齐操作
 8049b14:	50                   	push   %eax								;压入eax，作为sscanf的第三个参数
 8049b15:	68 8b a2 04 08       	push   $0x804a28b						;压入一个地址，作为sscanf的第二个参数
 8049b1a:	ff 75 f4             	pushl  -0xc(%ebp)						;压入b，作为sscanf的第一个参数
 8049b1d:	e8 ae f5 ff ff       	call   80490d0 <__isoc99_sscanf@plt>	;调用sscanf函数，格式化解析字符串
 8049b22:	83 c4 10             	add    $0x10,%esp
 8049b25:	85 c0                	test   %eax,%eax
 8049b27:	7f 0c                	jg     8049b35 <read_n_numbers+0x7b>	;if(~(SF^OF) & ~ZF);如果是正数（非零），则转跳
 8049b29:	e8 ae 02 00 00       	call   8049ddc <explode_bomb>
 8049b2e:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b33:	eb 11                	jmp    8049b46 <read_n_numbers+0x8c>
 8049b35:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)					;a = a +1
 8049b39:	8b 45 f0             	mov    -0x10(%ebp),%eax					;eax = a
 8049b3c:	3b 45 10             	cmp    0x10(%ebp),%eax					;eax - para3
 8049b3f:	7c 88                	jl     8049ac9 <read_n_numbers+0xf>		;如果小于传入的第三个参数，则继续执行这个函数的功能
 8049b41:	b8 01 00 00 00       	mov    $0x1,%eax						;返回值置1（true）
 8049b46:	c9                   	leave  
 8049b47:	c3                   	ret    

08049b48 <string_length>:
 8049b48:	55                   	push   %ebp								;esp = esp -4;*esp = ebp;调用者的ebp入栈，借此保护调用者ebp的值
 8049b49:	89 e5                	mov    %esp,%ebp						;将此刻栈顶指针寄存器（%esp）所存储的地址赋值给ebp
 8049b4b:	83 ec 10             	sub    $0x10,%esp						;esp = esp -16;栈顶生长16字节;由程序分析可知，此处申请了2个long int型变量
 8049b4e:	8b 45 08             	mov    0x8(%ebp),%eax					;调用者第一个参数（4字节）赋值给eax寄存器;由程序分析可知，此参数是字符串首地址
 8049b51:	89 45 f8             	mov    %eax,-0x8(%ebp)					;eax寄存器的值赋值给一个32位变量，该变量内存范围为ebp-8 ~ ebp-5，不妨记为a
 8049b54:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)					;用4字节（32位）的0覆盖一个32位变量，该变量内存范围为ebp-4 ~ ebp-1，不妨记为b
 8049b5b:	eb 08                	jmp    8049b65 <string_length+0x1d>		;无条件转跳，就是C语言里的goto
 8049b5d:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)					;a = a +1;字符串指针往后移动1个字节，指向下一个字符
 8049b61:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)					;b = b +1;由程序分析可知，变量b负责记录累加结果，统计字符串里的字符个数
 8049b65:	8b 45 f8             	mov    -0x8(%ebp),%eax					;eax = a;将当前字符串指针地址送入eax寄存器
 8049b68:	0f b6 00             	movzbl (%eax),%eax						;从内存里找到eax所记录的地址对应的值，赋值给eax;由程序分析可知，内存里，eax所记录的地址对应的值是一个字符，char型只有1字节（8位），如果要赋值给一个32位的变量，需要进行位拓展，movzbl意思是将src从byte（8位）通过零拓展获得long（32位）并把拓展结果赋值给dest，也就是传说中的无符号拓展
 8049b6b:	84 c0                	test   %al,%al							;AX是16位，AX的高8位叫AH，AX的低8位叫AL，EAX就是AX的拓展版本，16位变成32位，但是AL依然是EAX的低8位，AH依然是AL头上的8位;test %al,%al 即按位与，然而“与”运算的结果并不保存，但运算结果产生各种标志如溢出标志和全零标志等会保存到32位标志寄存器EFLAGS;由程序分析，当且仅当%al为零时，ZF标志位才为1，因为只有0&0才等于0，当且仅当与的结果是全零的时候，ZF标志才为1，否则ZF等于0
 8049b6d:	75 ee                	jne    8049b5d <string_length+0x15>		;if(~ZF)goto 8049b5d;检查标志寄存器的ZF字段是否为0，如果为0，条件为真，执行转跳，如果为1，条件为假，不执行转跳，顺序执行下一条指令
 8049b6f:	8b 45 fc             	mov    -0x4(%ebp),%eax					;eax = b;eax一般是用于保存累加结果的，由此可见，返回的参数是b
 8049b72:	c9                   	leave  									;movl %ebp, %esp;popl %ebp;恢复调用者的esp（栈顶），此时esp == ebp，此处（栈顶）存储的是调用者的ebp，弹出调用者的ebp到%ebp，从而完整恢复调用者的ebp和esp，释放被调用函数的所有栈空间
 8049b73:	c3                   	ret    									;popl %eip;恢复调用者的PC到PC寄存器%eip，%eip就是程序计数器PC，如果改写了它的值，相当于强制转跳。此处将转跳回调用函数，被调用函数的任务finished

08049b74 <strings_not_equal>:
 8049b74:	55                   	push   %ebp								;esp = esp -4;*esp = ebp;调用者的ebp入栈，借此保护调用者ebp的值
 8049b75:	89 e5                	mov    %esp,%ebp						;将此刻栈顶指针寄存器（%esp）所存储的地址赋值给ebp
 8049b77:	53                   	push   %ebx								;esp = esp -4;*esp = ebx;调用者的ebx入栈，借此保护调用者ebx的值
 8049b78:	83 ec 10             	sub    $0x10,%esp						;esp = esp -16;栈顶生长16字节
 8049b7b:	ff 75 08             	pushl  0x8(%ebp)						;esp = esp +4;*esp = *(ebp + 8);调用者第一个参数入栈
 8049b7e:	e8 c5 ff ff ff       	call   8049b48 <string_length>			;
 8049b83:	83 c4 04             	add    $0x4,%esp						;esp = esp +4;栈顶生长4字节
 8049b86:	89 c3                	mov    %eax,%ebx						;ebx = eax;由程序分析，此处接收来自string_length函数的计算结果（返回值）
 8049b88:	ff 75 0c             	pushl  0xc(%ebp)						;esp = esp +4;*esp = *(ebp + 12);调用者第二个参数入栈
 8049b8b:	e8 b8 ff ff ff       	call   8049b48 <string_length>			;
 8049b90:	83 c4 04             	add    $0x4,%esp						;esp = esp +4;
 8049b93:	39 c3                	cmp    %eax,%ebx						;ebx - eax
 8049b95:	74 07                	je     8049b9e <strings_not_equal+0x2a>	;if(ZF)goto 8049b9e
 8049b97:	b8 01 00 00 00       	mov    $0x1,%eax						;eax = 1;由程序分析可知，如果字符串长度不相等，则字符串必定不一样，eax保存当前函数的返回值，按字面意思，如果字符串不相等，返回真（布尔代数为1），如果相等，返回假（布尔代数为0），能执行到这里，说明字符串长度不相等，返回真，故eax == 1
 8049b9c:	eb 3c                	jmp    8049bda <strings_not_equal+0x66>	;
 8049b9e:	8b 45 08             	mov    0x8(%ebp),%eax
 8049ba1:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8049ba4:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049ba7:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049baa:	eb 1f                	jmp    8049bcb <strings_not_equal+0x57>
 8049bac:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049baf:	0f b6 10             	movzbl (%eax),%edx
 8049bb2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049bb5:	0f b6 00             	movzbl (%eax),%eax
 8049bb8:	38 c2                	cmp    %al,%dl
 8049bba:	74 07                	je     8049bc3 <strings_not_equal+0x4f>
 8049bbc:	b8 01 00 00 00       	mov    $0x1,%eax
 8049bc1:	eb 17                	jmp    8049bda <strings_not_equal+0x66>
 8049bc3:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 8049bc7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8049bcb:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049bce:	0f b6 00             	movzbl (%eax),%eax
 8049bd1:	84 c0                	test   %al,%al
 8049bd3:	75 d7                	jne    8049bac <strings_not_equal+0x38>
 8049bd5:	b8 00 00 00 00       	mov    $0x0,%eax
 8049bda:	8b 5d fc             	mov    -0x4(%ebp),%ebx					;恢复调用者的ebx
 8049bdd:	c9                   	leave  
 8049bde:	c3                   	ret    

08049bdf <initialize_bomb>:
 8049bdf:	55                   	push   %ebp
 8049be0:	89 e5                	mov    %esp,%ebp
 8049be2:	83 ec 08             	sub    $0x8,%esp
 8049be5:	83 ec 08             	sub    $0x8,%esp
 8049be8:	68 cd 99 04 08       	push   $0x80499cd
 8049bed:	6a 02                	push   $0x2
 8049bef:	e8 6c f4 ff ff       	call   8049060 <signal@plt>
 8049bf4:	83 c4 10             	add    $0x10,%esp
 8049bf7:	90                   	nop
 8049bf8:	c9                   	leave  
 8049bf9:	c3                   	ret    

08049bfa <initialize_bomb_solve>:
 8049bfa:	55                   	push   %ebp
 8049bfb:	89 e5                	mov    %esp,%ebp
 8049bfd:	90                   	nop
 8049bfe:	5d                   	pop    %ebp
 8049bff:	c3                   	ret    

08049c00 <blank_line>:
 8049c00:	55                   	push   %ebp
 8049c01:	89 e5                	mov    %esp,%ebp
 8049c03:	83 ec 08             	sub    $0x8,%esp
 8049c06:	eb 30                	jmp    8049c38 <blank_line+0x38>
 8049c08:	e8 03 f5 ff ff       	call   8049110 <__ctype_b_loc@plt>
 8049c0d:	8b 08                	mov    (%eax),%ecx
 8049c0f:	8b 45 08             	mov    0x8(%ebp),%eax
 8049c12:	8d 50 01             	lea    0x1(%eax),%edx
 8049c15:	89 55 08             	mov    %edx,0x8(%ebp)
 8049c18:	0f b6 00             	movzbl (%eax),%eax
 8049c1b:	0f be c0             	movsbl %al,%eax
 8049c1e:	01 c0                	add    %eax,%eax
 8049c20:	01 c8                	add    %ecx,%eax
 8049c22:	0f b7 00             	movzwl (%eax),%eax
 8049c25:	0f b7 c0             	movzwl %ax,%eax
 8049c28:	25 00 20 00 00       	and    $0x2000,%eax
 8049c2d:	85 c0                	test   %eax,%eax
 8049c2f:	75 07                	jne    8049c38 <blank_line+0x38>
 8049c31:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c36:	eb 0f                	jmp    8049c47 <blank_line+0x47>
 8049c38:	8b 45 08             	mov    0x8(%ebp),%eax
 8049c3b:	0f b6 00             	movzbl (%eax),%eax
 8049c3e:	84 c0                	test   %al,%al
 8049c40:	75 c6                	jne    8049c08 <blank_line+0x8>
 8049c42:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c47:	c9                   	leave  
 8049c48:	c3                   	ret    

08049c49 <skip>:
 8049c49:	55                   	push   %ebp
 8049c4a:	89 e5                	mov    %esp,%ebp
 8049c4c:	83 ec 18             	sub    $0x18,%esp
 8049c4f:	8b 0d 50 c2 04 08    	mov    0x804c250,%ecx
 8049c55:	8b 15 4c c2 04 08    	mov    0x804c24c,%edx
 8049c5b:	89 d0                	mov    %edx,%eax
 8049c5d:	c1 e0 02             	shl    $0x2,%eax
 8049c60:	01 d0                	add    %edx,%eax
 8049c62:	c1 e0 04             	shl    $0x4,%eax
 8049c65:	05 60 c2 04 08       	add    $0x804c260,%eax
 8049c6a:	83 ec 04             	sub    $0x4,%esp
 8049c6d:	51                   	push   %ecx
 8049c6e:	6a 50                	push   $0x50
 8049c70:	50                   	push   %eax
 8049c71:	e8 da f3 ff ff       	call   8049050 <fgets@plt>
 8049c76:	83 c4 10             	add    $0x10,%esp
 8049c79:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049c7c:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049c80:	74 12                	je     8049c94 <skip+0x4b>
 8049c82:	83 ec 0c             	sub    $0xc,%esp
 8049c85:	ff 75 f4             	pushl  -0xc(%ebp)
 8049c88:	e8 73 ff ff ff       	call   8049c00 <blank_line>
 8049c8d:	83 c4 10             	add    $0x10,%esp
 8049c90:	85 c0                	test   %eax,%eax
 8049c92:	75 bb                	jne    8049c4f <skip+0x6>
 8049c94:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049c97:	c9                   	leave  
 8049c98:	c3                   	ret    

08049c99 <read_line>:
 8049c99:	55                   	push   %ebp
 8049c9a:	89 e5                	mov    %esp,%ebp
 8049c9c:	83 ec 18             	sub    $0x18,%esp
 8049c9f:	e8 a5 ff ff ff       	call   8049c49 <skip>
 8049ca4:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049ca7:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049cab:	75 79                	jne    8049d26 <read_line+0x8d>
 8049cad:	8b 15 50 c2 04 08    	mov    0x804c250,%edx
 8049cb3:	a1 40 c2 04 08       	mov    0x804c240,%eax
 8049cb8:	39 c2                	cmp    %eax,%edx
 8049cba:	75 1a                	jne    8049cd6 <read_line+0x3d>
 8049cbc:	83 ec 0c             	sub    $0xc,%esp
 8049cbf:	68 8e a2 04 08       	push   $0x804a28e
 8049cc4:	e8 c7 f3 ff ff       	call   8049090 <puts@plt>
 8049cc9:	83 c4 10             	add    $0x10,%esp
 8049ccc:	83 ec 0c             	sub    $0xc,%esp
 8049ccf:	6a 08                	push   $0x8
 8049cd1:	e8 ca f3 ff ff       	call   80490a0 <exit@plt>
 8049cd6:	83 ec 0c             	sub    $0xc,%esp
 8049cd9:	68 ac a2 04 08       	push   $0x804a2ac
 8049cde:	e8 9d f3 ff ff       	call   8049080 <getenv@plt>
 8049ce3:	83 c4 10             	add    $0x10,%esp
 8049ce6:	85 c0                	test   %eax,%eax
 8049ce8:	74 0a                	je     8049cf4 <read_line+0x5b>
 8049cea:	83 ec 0c             	sub    $0xc,%esp
 8049ced:	6a 00                	push   $0x0
 8049cef:	e8 ac f3 ff ff       	call   80490a0 <exit@plt>
 8049cf4:	a1 40 c2 04 08       	mov    0x804c240,%eax
 8049cf9:	a3 50 c2 04 08       	mov    %eax,0x804c250
 8049cfe:	e8 46 ff ff ff       	call   8049c49 <skip>
 8049d03:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049d06:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049d0a:	75 1a                	jne    8049d26 <read_line+0x8d>
 8049d0c:	83 ec 0c             	sub    $0xc,%esp
 8049d0f:	68 8e a2 04 08       	push   $0x804a28e
 8049d14:	e8 77 f3 ff ff       	call   8049090 <puts@plt>
 8049d19:	83 c4 10             	add    $0x10,%esp
 8049d1c:	83 ec 0c             	sub    $0xc,%esp
 8049d1f:	6a 00                	push   $0x0
 8049d21:	e8 7a f3 ff ff       	call   80490a0 <exit@plt>
 8049d26:	8b 15 4c c2 04 08    	mov    0x804c24c,%edx
 8049d2c:	89 d0                	mov    %edx,%eax
 8049d2e:	c1 e0 02             	shl    $0x2,%eax
 8049d31:	01 d0                	add    %edx,%eax
 8049d33:	c1 e0 04             	shl    $0x4,%eax
 8049d36:	05 60 c2 04 08       	add    $0x804c260,%eax
 8049d3b:	83 ec 0c             	sub    $0xc,%esp
 8049d3e:	50                   	push   %eax
 8049d3f:	e8 6c f3 ff ff       	call   80490b0 <strlen@plt>
 8049d44:	83 c4 10             	add    $0x10,%esp
 8049d47:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049d4a:	83 7d f0 4e          	cmpl   $0x4e,-0x10(%ebp)
 8049d4e:	7e 4d                	jle    8049d9d <read_line+0x104>
 8049d50:	83 ec 0c             	sub    $0xc,%esp
 8049d53:	68 b7 a2 04 08       	push   $0x804a2b7
 8049d58:	e8 33 f3 ff ff       	call   8049090 <puts@plt>
 8049d5d:	83 c4 10             	add    $0x10,%esp
 8049d60:	8b 15 4c c2 04 08    	mov    0x804c24c,%edx
 8049d66:	8d 42 01             	lea    0x1(%edx),%eax
 8049d69:	a3 4c c2 04 08       	mov    %eax,0x804c24c
 8049d6e:	89 d0                	mov    %edx,%eax
 8049d70:	c1 e0 02             	shl    $0x2,%eax
 8049d73:	01 d0                	add    %edx,%eax
 8049d75:	c1 e0 04             	shl    $0x4,%eax
 8049d78:	05 60 c2 04 08       	add    $0x804c260,%eax
 8049d7d:	c7 00 2a 2a 2a 74    	movl   $0x742a2a2a,(%eax)
 8049d83:	c7 40 04 72 75 6e 63 	movl   $0x636e7572,0x4(%eax)
 8049d8a:	c7 40 08 61 74 65 64 	movl   $0x64657461,0x8(%eax)
 8049d91:	c7 40 0c 2a 2a 2a 00 	movl   $0x2a2a2a,0xc(%eax)
 8049d98:	e8 3f 00 00 00       	call   8049ddc <explode_bomb>
 8049d9d:	8b 15 4c c2 04 08    	mov    0x804c24c,%edx
 8049da3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049da6:	8d 48 ff             	lea    -0x1(%eax),%ecx
 8049da9:	89 d0                	mov    %edx,%eax
 8049dab:	c1 e0 02             	shl    $0x2,%eax
 8049dae:	01 d0                	add    %edx,%eax
 8049db0:	c1 e0 04             	shl    $0x4,%eax
 8049db3:	01 c8                	add    %ecx,%eax
 8049db5:	05 60 c2 04 08       	add    $0x804c260,%eax
 8049dba:	c6 00 00             	movb   $0x0,(%eax)
 8049dbd:	8b 15 4c c2 04 08    	mov    0x804c24c,%edx
 8049dc3:	8d 42 01             	lea    0x1(%edx),%eax
 8049dc6:	a3 4c c2 04 08       	mov    %eax,0x804c24c
 8049dcb:	89 d0                	mov    %edx,%eax
 8049dcd:	c1 e0 02             	shl    $0x2,%eax
 8049dd0:	01 d0                	add    %edx,%eax
 8049dd2:	c1 e0 04             	shl    $0x4,%eax
 8049dd5:	05 60 c2 04 08       	add    $0x804c260,%eax
 8049dda:	c9                   	leave  
 8049ddb:	c3                   	ret    

08049ddc <explode_bomb>:
 8049ddc:	55                   	push   %ebp
 8049ddd:	89 e5                	mov    %esp,%ebp
 8049ddf:	83 ec 08             	sub    $0x8,%esp
 8049de2:	83 ec 0c             	sub    $0xc,%esp
 8049de5:	68 d2 a2 04 08       	push   $0x804a2d2
 8049dea:	e8 a1 f2 ff ff       	call   8049090 <puts@plt>
 8049def:	83 c4 10             	add    $0x10,%esp
 8049df2:	83 ec 0c             	sub    $0xc,%esp
 8049df5:	68 db a2 04 08       	push   $0x804a2db
 8049dfa:	e8 91 f2 ff ff       	call   8049090 <puts@plt>
 8049dff:	83 c4 10             	add    $0x10,%esp
 8049e02:	90                   	nop
 8049e03:	c9                   	leave  
 8049e04:	c3                   	ret    

08049e05 <phase_defused>:
 8049e05:	55                   	push   %ebp
 8049e06:	89 e5                	mov    %esp,%ebp
 8049e08:	83 ec 68             	sub    $0x68,%esp
 8049e0b:	a1 4c c2 04 08       	mov    0x804c24c,%eax
 8049e10:	83 f8 07             	cmp    $0x7,%eax
 8049e13:	75 77                	jne    8049e8c <phase_defused+0x87>
 8049e15:	83 ec 0c             	sub    $0xc,%esp
 8049e18:	8d 45 a4             	lea    -0x5c(%ebp),%eax
 8049e1b:	50                   	push   %eax
 8049e1c:	8d 45 9c             	lea    -0x64(%ebp),%eax
 8049e1f:	50                   	push   %eax
 8049e20:	8d 45 a0             	lea    -0x60(%ebp),%eax
 8049e23:	50                   	push   %eax
 8049e24:	68 f2 a2 04 08       	push   $0x804a2f2
 8049e29:	68 a0 c3 04 08       	push   $0x804c3a0
 8049e2e:	e8 9d f2 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049e33:	83 c4 20             	add    $0x20,%esp
 8049e36:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049e39:	83 7d f4 03          	cmpl   $0x3,-0xc(%ebp)
 8049e3d:	75 3d                	jne    8049e7c <phase_defused+0x77>
 8049e3f:	83 ec 08             	sub    $0x8,%esp
 8049e42:	68 fb a2 04 08       	push   $0x804a2fb
 8049e47:	8d 45 a4             	lea    -0x5c(%ebp),%eax
 8049e4a:	50                   	push   %eax
 8049e4b:	e8 24 fd ff ff       	call   8049b74 <strings_not_equal>
 8049e50:	83 c4 10             	add    $0x10,%esp
 8049e53:	85 c0                	test   %eax,%eax
 8049e55:	75 25                	jne    8049e7c <phase_defused+0x77>
 8049e57:	83 ec 0c             	sub    $0xc,%esp
 8049e5a:	68 04 a3 04 08       	push   $0x804a304
 8049e5f:	e8 2c f2 ff ff       	call   8049090 <puts@plt>
 8049e64:	83 c4 10             	add    $0x10,%esp
 8049e67:	83 ec 0c             	sub    $0xc,%esp
 8049e6a:	68 2c a3 04 08       	push   $0x804a32c
 8049e6f:	e8 1c f2 ff ff       	call   8049090 <puts@plt>
 8049e74:	83 c4 10             	add    $0x10,%esp
 8049e77:	e8 d3 fa ff ff       	call   804994f <secret_phase>
 8049e7c:	83 ec 0c             	sub    $0xc,%esp
 8049e7f:	68 64 a3 04 08       	push   $0x804a364
 8049e84:	e8 07 f2 ff ff       	call   8049090 <puts@plt>
 8049e89:	83 c4 10             	add    $0x10,%esp
 8049e8c:	90                   	nop
 8049e8d:	c9                   	leave  
 8049e8e:	c3                   	ret    
 8049e8f:	90                   	nop

08049e90 <__libc_csu_init>:
 8049e90:	55                   	push   %ebp
 8049e91:	57                   	push   %edi
 8049e92:	56                   	push   %esi
 8049e93:	53                   	push   %ebx
 8049e94:	e8 d7 f2 ff ff       	call   8049170 <__x86.get_pc_thunk.bx>
 8049e99:	81 c3 67 21 00 00    	add    $0x2167,%ebx
 8049e9f:	83 ec 0c             	sub    $0xc,%esp
 8049ea2:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 8049ea6:	e8 55 f1 ff ff       	call   8049000 <_init>
 8049eab:	8d b3 10 ff ff ff    	lea    -0xf0(%ebx),%esi
 8049eb1:	8d 83 0c ff ff ff    	lea    -0xf4(%ebx),%eax
 8049eb7:	29 c6                	sub    %eax,%esi
 8049eb9:	c1 fe 02             	sar    $0x2,%esi
 8049ebc:	74 1f                	je     8049edd <__libc_csu_init+0x4d>
 8049ebe:	31 ff                	xor    %edi,%edi
 8049ec0:	83 ec 04             	sub    $0x4,%esp
 8049ec3:	55                   	push   %ebp
 8049ec4:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049ec8:	ff 74 24 2c          	pushl  0x2c(%esp)
 8049ecc:	ff 94 bb 0c ff ff ff 	call   *-0xf4(%ebx,%edi,4)
 8049ed3:	83 c7 01             	add    $0x1,%edi
 8049ed6:	83 c4 10             	add    $0x10,%esp
 8049ed9:	39 fe                	cmp    %edi,%esi
 8049edb:	75 e3                	jne    8049ec0 <__libc_csu_init+0x30>
 8049edd:	83 c4 0c             	add    $0xc,%esp
 8049ee0:	5b                   	pop    %ebx
 8049ee1:	5e                   	pop    %esi
 8049ee2:	5f                   	pop    %edi
 8049ee3:	5d                   	pop    %ebp
 8049ee4:	c3                   	ret    
 8049ee5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049eec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08049ef0 <__libc_csu_fini>:
 8049ef0:	c3                   	ret    

Disassembly of section .fini:

08049ef4 <_fini>:
 8049ef4:	53                   	push   %ebx
 8049ef5:	83 ec 08             	sub    $0x8,%esp
 8049ef8:	e8 73 f2 ff ff       	call   8049170 <__x86.get_pc_thunk.bx>
 8049efd:	81 c3 03 21 00 00    	add    $0x2103,%ebx
 8049f03:	83 c4 08             	add    $0x8,%esp
 8049f06:	5b                   	pop    %ebx
 8049f07:	c3                   	ret    
