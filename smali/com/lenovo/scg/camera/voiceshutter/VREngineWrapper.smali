.class public Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;
.super Ljava/lang/Object;
.source "VREngineWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VREngineWrapper"

.field private static final TAG1:Ljava/lang/String; = "WrapperProc"

.field private static appID:[B = null

.field private static counter:I = 0x0

.field private static debugKey:Z = false

.field private static mAvailable:Z = false

.field private static mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer; = null

.field private static mExitFlag:Z = false

.field private static mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener; = null

.field private static mMutex:Ljava/lang/Object; = null

.field private static mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder; = null

.field private static mVadEnd:Z = false

.field private static mVadFlag:I = 0x0

.field private static mlicense:[B = null

.field private static final sLicense:Ljava/lang/String; = "b5bc2eca90d902ebd38a5bc5a2a0b8c1863335a11bcc5dee64ef14f8d38b0b705f9d8dc2a02cd30fce2466f14798659685b43cc9c36b6b6252d458a9f0a66a54b35f36f94c55ffc026f31f93f6ddfcd3e5bdb9e1fc393397dde3ce98968ab8e1582f9942ce4d8d371c55c06fb05a767da10c9324c7c55a9b60e0df9dcacaf683"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 19
    sput-object v2, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    .line 20
    sput-boolean v1, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mVadEnd:Z

    .line 21
    sput v1, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mVadFlag:I

    .line 22
    sput-object v2, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    .line 23
    sput-object v2, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mMutex:Ljava/lang/Object;

    .line 25
    sput-boolean v1, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mAvailable:Z

    .line 27
    sput-boolean v1, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mExitFlag:Z

    .line 31
    sput-object v2, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mlicense:[B

    .line 33
    const/16 v0, 0x20

    new-array v0, v0, [B

    sput-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->appID:[B

    .line 205
    sput-boolean v1, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->debugKey:Z

    .line 206
    sput v1, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->counter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Exit()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "VREngineWrapper"

    const-string v1, "Exit !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mExitFlag:Z

    .line 107
    return-void
.end method

.method public static Init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbPath"    # Ljava/lang/String;
    .param p2, "dbName"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-object v13, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mMutex:Ljava/lang/Object;

    monitor-enter v13

    .line 37
    :try_start_0
    sget-boolean v12, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mAvailable:Z

    if-eqz v12, :cond_0

    .line 38
    const-string v12, "VREngineWrapper"

    const-string v14, "Init: mAvailable --- return 0"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v12, 0x0

    monitor-exit v13

    .line 101
    :goto_0
    return v12

    .line 41
    :cond_0
    invoke-static {}, Lcom/baidu/speech/easr/easrNativeJni;->Free()I

    .line 43
    sget-object v12, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mlicense:[B

    if-nez v12, :cond_1

    .line 44
    const-string v12, "b5bc2eca90d902ebd38a5bc5a2a0b8c1863335a11bcc5dee64ef14f8d38b0b705f9d8dc2a02cd30fce2466f14798659685b43cc9c36b6b6252d458a9f0a66a54b35f36f94c55ffc026f31f93f6ddfcd3e5bdb9e1fc393397dde3ce98968ab8e1582f9942ce4d8d371c55c06fb05a767da10c9324c7c55a9b60e0df9dcacaf683"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    sput-object v12, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mlicense:[B

    .line 54
    :cond_1
    const-string v12, "baidu"

    sget-object v14, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mlicense:[B

    sget-object v15, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mlicense:[B

    array-length v15, v15

    sget-object v16, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->appID:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v12, v14, v15, v1}, Lcom/baidu/speech/easr/easrNativeJni;->VerifyLicense(Landroid/content/Context;Ljava/lang/String;[BI[B)I

    move-result v2

    .line 56
    .local v2, "authorize":I
    const-string v12, "VREngineWrapper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "GetTestAuthorize "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/16 v12, 0x8

    invoke-static {v12}, Lcom/baidu/speech/easr/easrNativeJni;->SetLogLevel(I)I

    .line 60
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ":f_1"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "f_1":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ":f_3"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "f_3":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ":f_4"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "f_4":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ":f_5"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "f_5":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ":f_6"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, "f_6":Ljava/lang/String;
    invoke-static {v6, v7, v4, v5}, Lcom/baidu/speech/easr/easrNativeJni;->Initial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 67
    .local v11, "ret":I
    const-string v12, "VREngineWrapper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Initial "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-eqz v11, :cond_2

    .line 69
    const/4 v12, -0x1

    monitor-exit v13

    goto/16 :goto_0

    .line 100
    .end local v2    # "authorize":I
    .end local v3    # "f_1":Ljava/lang/String;
    .end local v4    # "f_3":Ljava/lang/String;
    .end local v5    # "f_4":Ljava/lang/String;
    .end local v6    # "f_5":Ljava/lang/String;
    .end local v7    # "f_6":Ljava/lang/String;
    .end local v11    # "ret":I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 72
    .restart local v2    # "authorize":I
    .restart local v3    # "f_1":Ljava/lang/String;
    .restart local v4    # "f_3":Ljava/lang/String;
    .restart local v5    # "f_4":Ljava/lang/String;
    .restart local v6    # "f_5":Ljava/lang/String;
    .restart local v7    # "f_6":Ljava/lang/String;
    .restart local v11    # "ret":I
    :cond_2
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ":f_a"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 73
    .local v10, "lmfile":Ljava/lang/String;
    const-string v12, "$zi_LM_LOOP"

    const/4 v14, 0x0

    invoke-static {v10, v12, v14}, Lcom/baidu/speech/easr/easrNativeJni;->ReadLM(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v11

    .line 74
    if-eqz v11, :cond_3

    .line 75
    const/4 v12, -0x1

    monitor-exit v13

    goto/16 :goto_0

    .line 78
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ":f_b"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, "f_b":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ":f_c"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 81
    .local v9, "f_c":Ljava/lang/String;
    invoke-static {v8}, Lcom/baidu/speech/easr/easrNativeJni;->ReadSlot(Ljava/lang/String;)I

    .line 82
    invoke-static {v9}, Lcom/baidu/speech/easr/easrNativeJni;->ReadSlotLink(Ljava/lang/String;)I

    .line 84
    const/4 v12, -0x1

    invoke-static {v12, v3}, Lcom/baidu/speech/easr/easrNativeJni;->BuildNet(ILjava/lang/String;)I

    move-result v11

    .line 85
    const-string v12, "VREngineWrapper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "BuildNet "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-eqz v11, :cond_4

    .line 87
    const/4 v12, -0x1

    monitor-exit v13

    goto/16 :goto_0

    .line 90
    :cond_4
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x7d0

    const-wide v16, 0x40cd4c0000000000L    # 15000.0

    move-wide/from16 v0, v16

    invoke-static {v12, v14, v15, v0, v1}, Lcom/baidu/speech/easr/easrNativeJni;->InitialDecoder(IIID)I

    move-result v11

    .line 91
    const-string v12, "VREngineWrapper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "InitialDecoder "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-eqz v11, :cond_5

    .line 93
    const/4 v12, -0x1

    monitor-exit v13

    goto/16 :goto_0

    .line 96
    :cond_5
    new-instance v12, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    const/4 v14, 0x2

    invoke-direct {v12, v14}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;-><init>(I)V

    sput-object v12, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    .line 97
    new-instance v12, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    const v14, 0xfa00

    invoke-direct {v12, v14}, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;-><init>(I)V

    sput-object v12, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    .line 98
    const/4 v12, 0x0

    sput-boolean v12, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mExitFlag:Z

    .line 99
    const/4 v12, 0x1

    sput-boolean v12, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mAvailable:Z

    .line 100
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method private static ProcData([SI)V
    .locals 10
    .param p0, "data"    # [S
    .param p1, "size"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 322
    sget-boolean v1, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mVadEnd:Z

    invoke-static {v0, p0, p1, v1}, Lcom/baidu/speech/easr/easrNativeJni;->VADDetect(I[SIZ)I

    move-result v7

    .line 323
    .local v7, "ret":I
    const-string v1, "WrapperProc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VADDetect "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v1, -0x4

    if-ne v7, v1, :cond_1

    .line 326
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Restart()V

    .line 327
    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->restart()V

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const/4 v4, 0x3

    .line 331
    .local v4, "expect":I
    const/16 v1, 0x3e8

    filled-new-array {v4, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    .line 332
    .local v3, "sentenceT":[[B
    sget-boolean v5, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mVadEnd:Z

    move-object v1, p0

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/baidu/speech/easr/easrNativeJni;->Decode(I[SI[[BIZ)I

    move-result v7

    .line 333
    const-string v1, "WrapperProc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decode "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", VadEnd "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v5, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mVadEnd:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    sget-boolean v1, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mVadEnd:Z

    if-eqz v1, :cond_2

    .line 335
    const-string v1, "WrapperProc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VadEnd Decode "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_2
    const/4 v1, -0x3

    if-ne v7, v1, :cond_5

    .line 342
    invoke-static {v0}, Lcom/baidu/speech/easr/easrNativeJni;->GetImmeSentence(I)Ljava/lang/String;

    move-result-object v6

    .line 343
    .local v6, "result":Ljava/lang/String;
    const-string v1, "WrapperProc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetImmeSentence "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v6    # "result":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/baidu/speech/easr/easrNativeJni;->GetVadSt(I)I

    move-result v1

    if-lez v1, :cond_4

    .line 383
    invoke-static {v0}, Lcom/baidu/speech/easr/easrNativeJni;->GetVadEd(I)I

    move-result v0

    if-lez v0, :cond_a

    .line 384
    const-string v0, "WrapperProc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endOfSpeech "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    sput-boolean v8, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mVadEnd:Z

    .line 386
    sget v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mVadFlag:I

    if-ne v0, v8, :cond_4

    .line 387
    sput v9, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mVadFlag:I

    .line 388
    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;->onEndPoint()V

    .line 397
    :cond_4
    :goto_2
    sget-boolean v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mVadEnd:Z

    if-eqz v0, :cond_0

    if-ltz v7, :cond_0

    .line 398
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Stop()V

    goto/16 :goto_0

    .line 350
    :cond_5
    if-lez v7, :cond_7

    .line 351
    new-instance v6, Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 352
    .restart local v6    # "result":Ljava/lang/String;
    const-string v0, "WrapperProc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**** **** Decode Result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {v6}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->ProcResult(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 354
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Restart()V

    .line 355
    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->restart()V

    goto/16 :goto_0

    .line 358
    :cond_6
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Stop()V

    .line 359
    sput v9, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mVadFlag:I

    goto/16 :goto_0

    .line 363
    .end local v6    # "result":Ljava/lang/String;
    :cond_7
    if-nez v7, :cond_8

    .line 364
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Restart()V

    .line 365
    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->restart()V

    goto/16 :goto_0

    .line 368
    :cond_8
    const/4 v1, -0x2

    if-eq v7, v1, :cond_3

    .line 371
    const/4 v1, -0x5

    if-ne v7, v1, :cond_9

    .line 372
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Restart()V

    .line 373
    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->restart()V

    goto/16 :goto_0

    .line 377
    :cond_9
    sget-object v1, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    invoke-interface {v1, v7}, Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;->onError(I)V

    goto/16 :goto_1

    .line 391
    :cond_a
    sget v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mVadFlag:I

    if-nez v0, :cond_4

    .line 392
    sput v8, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mVadFlag:I

    .line 393
    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;->onStartPoint()V

    goto :goto_2
.end method

.method private static ProcResult(Ljava/lang/String;)Z
    .locals 4
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 276
    :try_start_0
    sget-object v2, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    if-eqz v2, :cond_1

    .line 277
    const-string/jumbo v2, "\u8304\u5b50"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    sget-object v2, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    const-string/jumbo v3, "\u8304\u5b50"

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;->onResult(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Stop()V

    .line 303
    :goto_0
    return v1

    .line 281
    :cond_0
    const-string/jumbo v2, "\u62cd\u7167"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    sget-object v2, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    const-string/jumbo v3, "\u62cd\u7167"

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;->onResult(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 285
    :cond_2
    :try_start_1
    const-string v2, "123"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    sget-object v2, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    const-string v3, "123"

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;->onResult(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Stop()V

    goto :goto_0

    .line 289
    :cond_3
    const-string v2, "cheese"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 290
    sget-object v2, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    const-string v3, "cheese"

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;->onResult(Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Stop()V

    goto :goto_0

    .line 293
    :cond_4
    const-string/jumbo v2, "snap"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    sget-object v2, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    const-string/jumbo v3, "snap"

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;->onResult(Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static Restart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 110
    const-string v1, "VREngineWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restart ! tid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {v6}, Lcom/baidu/speech/easr/easrNativeJni;->ResetVAD(I)I

    move-result v0

    .line 112
    .local v0, "ret":I
    const-string v1, "WrapperProc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResetVAD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/high16 v1, 0x40200000    # 2.5f

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v6, v1, v2}, Lcom/baidu/speech/easr/easrNativeJni;->InitialVAD(IFF)I

    move-result v0

    .line 114
    const-string v1, "WrapperProc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitialVAD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {v6}, Lcom/baidu/speech/easr/easrNativeJni;->ResetDecoder(I)I

    move-result v0

    .line 116
    const-string v1, "WrapperProc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResetDecoder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {v6, v6, v6}, Lcom/baidu/speech/easr/easrNativeJni;->SetCurrNetTreeID(III)I

    move-result v0

    .line 118
    const-string v1, "WrapperProc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetCurrNetTreeID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sput-boolean v6, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mVadEnd:Z

    .line 122
    sput v6, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mVadFlag:I

    .line 124
    sget-object v1, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    if-eqz v1, :cond_0

    .line 125
    sget-object v1, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;->onBegin()V

    .line 127
    :cond_0
    return-void
.end method

.method protected static SendData([BI)V
    .locals 6
    .param p0, "data"    # [B
    .param p1, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 307
    div-int/lit8 v3, p1, 0x2

    new-array v2, v3, [S

    .line 308
    .local v2, "tmpBuf":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    div-int/lit8 v3, p1, 0x2

    if-ge v1, v3, :cond_0

    .line 309
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 310
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 311
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 312
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x0

    aget-byte v3, p0, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 313
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 314
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    aput-short v3, v2, v1

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :cond_0
    sget-object v4, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    monitor-enter v4

    .line 317
    :try_start_0
    sget-object v3, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    div-int/lit8 v5, p1, 0x2

    invoke-virtual {v3, v2, v5}, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->writeShort([SI)I

    .line 318
    monitor-exit v4

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static Start(Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    .prologue
    .line 130
    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;-><init>(I)V

    sput-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    .line 133
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->getStatus()Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;->IDLE:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    if-eq v0, v1, :cond_1

    .line 201
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string v0, "VREngineWrapper"

    const-string v1, "Start !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sput-object p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    .line 139
    new-instance v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper$1;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper$1;-><init>()V

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper$1;->start()V

    goto :goto_0
.end method

.method public static Stop()V
    .locals 4

    .prologue
    .line 255
    const-string v0, "VREngineWrapper"

    const-string v1, "Stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->getStatus()Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;->STARTING:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->getStatus()Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;->WORKING:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    if-eq v0, v1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 260
    :cond_0
    const-string v0, "VREngineWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop !tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    .line 266
    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->stop()V

    .line 267
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mVadEnd:Z

    .line 268
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mVadFlag:I

    .line 269
    const-string v0, "VREngineWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopImp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mVadEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;)Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    .prologue
    .line 15
    sput-object p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    return-object p0
.end method

.method static synthetic access$100()Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;)Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    .prologue
    .line 15
    sput-object p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mAvailable:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 15
    sput-boolean p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mAvailable:Z

    return p0
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 15
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Restart()V

    return-void
.end method

.method static synthetic access$500([SI)V
    .locals 0
    .param p0, "x0"    # [S
    .param p1, "x1"    # I

    .prologue
    .line 15
    invoke-static {p0, p1}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->ProcData([SI)V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mExitFlag:Z

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->counter:I

    return v0
.end method

.method static synthetic access$708()I
    .locals 2

    .prologue
    .line 15
    sget v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->counter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->counter:I

    return v0
.end method

.method static synthetic access$800([S)[B
    .locals 1
    .param p0, "x0"    # [S

    .prologue
    .line 15
    invoke-static {p0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->arrayConvert([S)[B

    move-result-object v0

    return-object v0
.end method

.method private static arrayConvert([S)[B
    .locals 5
    .param p0, "src"    # [S

    .prologue
    .line 241
    if-nez p0, :cond_1

    .line 242
    const/4 v0, 0x0

    .line 250
    :cond_0
    return-object v0

    .line 244
    :cond_1
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 245
    .local v0, "des":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 246
    aget-short v2, p0, v1

    .line 247
    .local v2, "temp":S
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    int-to-byte v4, v2

    aput-byte v4, v0, v3

    .line 248
    mul-int/lit8 v3, v1, 0x2

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static saveProcDate4Debug([SI)V
    .locals 1
    .param p0, "realBuffer"    # [S
    .param p1, "len"    # I

    .prologue
    .line 208
    new-instance v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper$2;-><init>([S)V

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper$2;->start()V

    .line 238
    return-void
.end method
