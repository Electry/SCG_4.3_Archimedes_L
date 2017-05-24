.class Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;
.super Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
.source "NetThreadTaskMaterial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SCGNetThreadPool"


# instance fields
.field private mActionType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

.field private mContext:Landroid/content/Context;

.field private mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

.field private mDataType:Ljava/lang/Object;

.field private mDataUrl:Ljava/lang/Object;

.field private mFlagCanceled:Z

.field private mGcListener:Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

.field private mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

.field private mLock:Ljava/lang/Object;

.field private mTryCnt:I

.field private mUserContext:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    .line 20
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mUserContext:Ljava/lang/Object;

    .line 22
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mFlagCanceled:Z

    .line 24
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mDataType:Ljava/lang/Object;

    .line 26
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mDataUrl:Ljava/lang/Object;

    .line 28
    iput v2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mTryCnt:I

    .line 30
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mLock:Ljava/lang/Object;

    .line 34
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mContext:Landroid/content/Context;

    .line 36
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mActionType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    .line 38
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mGcListener:Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

    .line 42
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mFlagCanceled:Z

    .line 43
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mActionType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    .line 45
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    .line 46
    return-void
.end method

.method private isCanceled()Z
    .locals 3

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "bFlag":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 129
    :try_start_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mFlagCanceled:Z

    .line 130
    monitor-exit v2

    .line 131
    return v0

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public cancelTask()V
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mFlagCanceled:Z

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->cancel()V

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPicData()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 166
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    if-nez v4, :cond_0

    .line 194
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mDataUrl:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 170
    .local v3, "sUrl":Ljava/lang/String;
    const/4 v1, 0x0

    .line 171
    .local v1, "nTryCnt":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/net/NetTypeReader;->getNetType(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    move-result-object v2

    .line 172
    .local v2, "netType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;
    const/4 v0, 0x0

    .line 174
    .local v0, "data":[B
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->getNetBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 175
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 185
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 186
    if-nez v0, :cond_5

    .line 187
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v5, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mUserContext:Ljava/lang/Object;

    invoke-interface {v4, v5, v7, v6}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    :cond_3
    if-nez v0, :cond_4

    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 178
    iget v4, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mTryCnt:I

    if-gt v1, v4, :cond_2

    .line 180
    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_2
    const-string v4, "SCGNetThreadPool"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPicData try "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " netType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_4
    if-eqz v0, :cond_1

    goto :goto_1

    .line 189
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v5, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mUserContext:Ljava/lang/Object;

    invoke-interface {v4, v5, v0, v6}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 192
    :cond_6
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v5, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mUserContext:Ljava/lang/Object;

    invoke-interface {v4, v5, v7, v6}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public getStringData()V
    .locals 9

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "nTryCnt":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mDataUrl:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 138
    .local v4, "sUrl":Ljava/lang/String;
    new-instance v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;-><init>()V

    .line 140
    .local v2, "netRetString":Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;
    const/4 v0, 0x0

    .line 142
    .local v0, "bSuc":Z
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    invoke-virtual {v5, v4, v2}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->getNetString(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;)Z

    move-result v0

    .line 143
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 156
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    if-nez v5, :cond_4

    .line 163
    :goto_1
    return-void

    .line 145
    :cond_2
    if-nez v0, :cond_3

    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 147
    iget v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mTryCnt:I

    if-gt v1, v5, :cond_1

    .line 149
    const-wide/16 v6, 0xa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_2
    const-string v5, "SCGNetThreadPool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStringData try "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_3
    if-eqz v0, :cond_0

    goto :goto_0

    .line 157
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_6

    .line 158
    if-eqz v0, :cond_5

    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    .line 159
    .local v3, "resultType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    :goto_3
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    iget-object v6, v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;->sResult:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mUserContext:Ljava/lang/Object;

    invoke-interface {v5, v3, v6, v7}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 158
    .end local v3    # "resultType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    :cond_5
    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    goto :goto_3

    .line 161
    :cond_6
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v6, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mUserContext:Ljava/lang/Object;

    invoke-interface {v5, v6, v7, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 150
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    if-eqz v3, :cond_0

    .line 54
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mUserContext:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "sName":Ljava/lang/String;
    const-string v3, "SCGNetThreadPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " running"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mActionType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    if-ne v3, v4, :cond_4

    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mDataType:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    .line 63
    .local v0, "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumNetDataType:[I

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 76
    .end local v0    # "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    :cond_2
    :goto_1
    const-string v3, "SCGNetThreadPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " done"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v2    # "sName":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mGcListener:Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mGcListener:Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

    invoke-interface {v3, p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;->onTaskGc(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;)V

    goto :goto_0

    .line 65
    .restart local v0    # "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    .restart local v2    # "sName":Ljava/lang/String;
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->getStringData()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 77
    .end local v0    # "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    .end local v2    # "sName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "get net data %s,error:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mDataType:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    if-eqz v3, :cond_3

    .line 82
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mUserContext:Ljava/lang/Object;

    invoke-interface {v3, v4, v7, v5}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    .restart local v2    # "sName":Ljava/lang/String;
    :pswitch_1
    :try_start_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->getPicData()V

    goto :goto_1

    .line 75
    .end local v0    # "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mActionType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_POST:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mActionType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_DEL:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;
    .param p2, "userContext"    # Ljava/lang/Object;

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setListener(Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    .line 108
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    .line 109
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mUserContext:Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public setTaskGcListener(Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mGcListener:Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

    .line 115
    return-void
.end method

.method public setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "dataType"    # Ljava/lang/Object;
    .param p2, "dataUrl"    # Ljava/lang/Object;
    .param p3, "nRetryCnt"    # I

    .prologue
    const/4 v1, 0x5

    .line 94
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mDataType:Ljava/lang/Object;

    .line 95
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mDataUrl:Ljava/lang/Object;

    .line 97
    iput p3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mTryCnt:I

    .line 98
    iget v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mTryCnt:I

    if-le v0, v1, :cond_0

    .line 99
    iput v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskMaterial;->mTryCnt:I

    .line 101
    :cond_0
    return-void
.end method
