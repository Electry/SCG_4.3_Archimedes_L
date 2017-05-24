.class Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;
.super Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
.source "NetThreadTaskPhotoGrapher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher$1;
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

    .line 41
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    .line 22
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mUserContext:Ljava/lang/Object;

    .line 24
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mFlagCanceled:Z

    .line 26
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mDataType:Ljava/lang/Object;

    .line 28
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mDataUrl:Ljava/lang/Object;

    .line 30
    iput v2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mTryCnt:I

    .line 32
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    .line 35
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mContext:Landroid/content/Context;

    .line 37
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mActionType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    .line 39
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mGcListener:Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

    .line 43
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mFlagCanceled:Z

    .line 44
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mActionType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    .line 46
    new-instance v0, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    .line 47
    return-void
.end method

.method private isCanceled()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, "bFlag":Z
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mFlagCanceled:Z

    .line 134
    return v0
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mFlagCanceled:Z

    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->cancel()V

    .line 127
    return-void
.end method

.method public getPicData()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 169
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    if-nez v6, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mDataUrl:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 173
    .local v3, "sUrl":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "nTryCnt":I
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/net/NetTypeReader;->getNetType(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    move-result-object v2

    .line 178
    .local v2, "netType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;
    const/4 v0, 0x0

    .line 179
    .local v0, "data":[B
    const-string v4, ""

    .line 180
    .local v4, "sortName":Ljava/lang/String;
    const-string v5, ""

    .line 190
    .local v5, "updateTime":Ljava/lang/String;
    const-string v6, "jiaxiaowei"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "----form local data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-eqz v0, :cond_2

    .line 192
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v0, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 196
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v10, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 200
    :cond_3
    const-string v6, "jiaxiaowei"

    const-string v7, "-------------start load web photo------"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->getNetBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 202
    const-string v6, "jiaxiaowei"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--------load web photo-data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 215
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_8

    .line 216
    if-nez v0, :cond_7

    .line 217
    const-string v6, "jiaxiaowei"

    const-string v7, "load photo  failed"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v10, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 206
    :cond_5
    if-nez v0, :cond_6

    .line 207
    add-int/lit8 v1, v1, 0x1

    .line 208
    iget v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mTryCnt:I

    if-gt v1, v6, :cond_4

    .line 210
    const-wide/16 v6, 0xa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_2
    const-string v6, "SCGNetThreadPool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPicData try "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " netType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_6
    if-eqz v0, :cond_3

    goto :goto_1

    .line 220
    :cond_7
    const-string v6, "jiaxiaowei"

    const-string v7, "load photo  success"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v0, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 224
    :cond_8
    const-string v6, "jiaxiaowei"

    const-string v7, "load photo  cancel"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mUserContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v10, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 211
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public getStringData()V
    .locals 9

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, "nTryCnt":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mDataUrl:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 141
    .local v4, "sUrl":Ljava/lang/String;
    new-instance v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;-><init>()V

    .line 143
    .local v2, "netRetString":Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;
    const/4 v0, 0x0

    .line 145
    .local v0, "bSuc":Z
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mDataSerializer:Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;

    invoke-virtual {v5, v4, v2}, Lcom/lenovo/scg/gallery3d/net/NetDataSerializer;->getNetString(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;)Z

    move-result v0

    .line 146
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    if-nez v5, :cond_4

    .line 166
    :goto_1
    return-void

    .line 148
    :cond_2
    if-nez v0, :cond_3

    .line 149
    add-int/lit8 v1, v1, 0x1

    .line 150
    iget v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mTryCnt:I

    if-gt v1, v5, :cond_1

    .line 152
    const-wide/16 v6, 0xa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
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

    .line 157
    :cond_3
    if-eqz v0, :cond_0

    goto :goto_0

    .line 160
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_6

    .line 161
    if-eqz v0, :cond_5

    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    .line 162
    .local v3, "resultType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    :goto_3
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    iget-object v6, v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$NetRetString;->sResult:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mUserContext:Ljava/lang/Object;

    invoke-interface {v5, v3, v6, v7}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 161
    .end local v3    # "resultType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    :cond_5
    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    goto :goto_3

    .line 164
    :cond_6
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v6, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mUserContext:Ljava/lang/Object;

    invoke-interface {v5, v6, v7, v8}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 153
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    if-eqz v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mUserContext:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 61
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

    .line 62
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mActionType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    if-ne v3, v4, :cond_4

    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mDataType:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    .line 64
    .local v0, "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher$1;->$SwitchMap$com$lenovo$scg$gallery3d$net$NetDataConst$EnumNetDataType:[I

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 78
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

    .line 88
    .end local v2    # "sName":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mGcListener:Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

    if-eqz v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mGcListener:Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

    invoke-interface {v3, p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;->onTaskGc(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;)V

    goto :goto_0

    .line 67
    .restart local v0    # "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    .restart local v2    # "sName":Ljava/lang/String;
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->getStringData()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 79
    .end local v0    # "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    .end local v2    # "sName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "NetThreadTaskPhotoGrapher get net data %s,error:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mDataType:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    if-eqz v3, :cond_3

    .line 84
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mUserContext:Ljava/lang/Object;

    invoke-interface {v3, v4, v7, v5}, Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;->onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    .restart local v2    # "sName":Ljava/lang/String;
    :pswitch_1
    :try_start_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->getPicData()V

    goto :goto_1

    .line 77
    .end local v0    # "dataType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mActionType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_POST:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mActionType:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_DEL:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 64
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
    .line 108
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setListener(Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    .line 110
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mListener:Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;

    .line 111
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mUserContext:Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public setTaskGcListener(Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mGcListener:Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;

    .line 118
    return-void
.end method

.method public setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "dataType"    # Ljava/lang/Object;
    .param p2, "dataUrl"    # Ljava/lang/Object;
    .param p3, "nRetryCnt"    # I

    .prologue
    const/4 v1, 0x5

    .line 96
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mDataType:Ljava/lang/Object;

    .line 97
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mDataUrl:Ljava/lang/Object;

    .line 99
    iput p3, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mTryCnt:I

    .line 100
    iget v0, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mTryCnt:I

    if-le v0, v1, :cond_0

    .line 101
    iput v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadTaskPhotoGrapher;->mTryCnt:I

    .line 103
    :cond_0
    return-void
.end method
