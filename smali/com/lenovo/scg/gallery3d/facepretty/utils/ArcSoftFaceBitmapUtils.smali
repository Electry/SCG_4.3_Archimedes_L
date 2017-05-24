.class public abstract Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;
.super Ljava/lang/Object;
.source "ArcSoftFaceBitmapUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ArcSoft_Debug"


# instance fields
.field private command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

.field private faceRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private faceRolls:[I

.field private mContext:Landroid/content/Context;

.field private mFaceParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;",
            ">;"
        }
    .end annotation
.end field

.field public mPicPostProcessJNI:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mPicPostProcessJNI:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

    .line 28
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRects:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRects:Ljava/util/ArrayList;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRolls:[I

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRects:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRolls:[I

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    if-nez v0, :cond_3

    .line 88
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    .line 90
    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mPicPostProcessJNI:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

    .line 28
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mContext:Landroid/content/Context;

    .line 37
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRects:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRects:Ljava/util/ArrayList;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRolls:[I

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRects:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRolls:[I

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    if-nez v0, :cond_3

    .line 59
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    .line 67
    :cond_3
    return-void
.end method

.method public static printStackTrace()V
    .locals 9

    .prologue
    .line 250
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v5

    .line 251
    .local v5, "ts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    .line 253
    .local v4, "ste":[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 254
    .local v3, "s":Ljava/lang/StackTraceElement;
    const-string/jumbo v6, "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n =============="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string/jumbo v6, "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string/jumbo v6, "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"

    const-string v7, "=========    ==================="

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v3    # "s":Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method


# virtual methods
.method public creatFaceEffectBitmap(Landroid/graphics/Bitmap;Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "commands"    # Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->setPicPostSrcBitmap(Landroid/graphics/Bitmap;)V

    .line 214
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->setCommand(Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;)V

    .line 215
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mPicPostProcessJNI:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRects:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRolls:[I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->arcsoftProcessFace(Ljava/util/ArrayList;[ILjava/util/ArrayList;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    .local v0, "mEffectBmp":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public creatFaceEffectBitmap(Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "mFaceParams"    # Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    .param p2, "faceID"    # I

    .prologue
    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 171
    const-string v3, "ArcSoft_Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00000000000000 this.mFaceParams >>>> \u5730\u5740 : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 176
    const-string v2, "ArcSoft_Debug"

    const-string v3, "mFaceParams.isEmpty()------------->>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    if-ge v2, v3, :cond_2

    .line 180
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 181
    const-string v2, "ArcSoft_Debug"

    const-string v3, "ListSize < face id ===========================>>>>>>>>>>>>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->setmFaceParams(Ljava/util/ArrayList;)V

    .line 186
    const-string v2, "ArcSoft_Debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5730\u5740 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 189
    const-string v3, "ArcSoft_Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "this.mFaceParams >>>> \u5730\u5740 : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_3
    const-string v2, "ArcSoft_Debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FaceRect Size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceRects()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 197
    const-string v2, "ArcSoft_Debug"

    const-string v3, "\r\n creatFaceEffectBitmap()\t\t>>>>\t\tstart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v3, "ArcSoft_Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5730\u5740 : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceParams()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v3, "ArcSoft_Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EyeEnlargmentLevel : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceParams()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmEyeEnlargmentLevel()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v2, "ArcSoft_Debug"

    const-string v3, "creatFaceEffectBitmap()\t\t>>>>\t\tend\r\n "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 204
    :cond_4
    const-string v2, "ArcSoft_DebugWDY"

    const-string/jumbo v3, "start======================================================>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mPicPostProcessJNI:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRects:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRolls:[I

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->arcsoftProcessFace(Ljava/util/ArrayList;[ILjava/util/ArrayList;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 206
    .local v1, "mEffectBmp":Landroid/graphics/Bitmap;
    const-string v2, "ArcSoft_DebugWDY"

    const-string v3, "end======================================================>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-object v1
.end method

.method public getCommand()Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    return-object v0
.end method

.method public getFlasslessParamByFaceID(I)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    .locals 5
    .param p1, "faceID"    # I

    .prologue
    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 232
    const-string v2, "ArcSoft_Debug"

    const-string v3, "\r\n getFlasslessParamByFaceID()\t\t>>>>\t\tstart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v2, "ArcSoft_Debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "faceID =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v3, "ArcSoft_Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5927\u773c : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceParams()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmEyeEnlargmentLevel()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v3, "ArcSoft_Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u7626\u8138 : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceParams()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSlenderFaceLevel()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v3, "ArcSoft_Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u7f8e\u767d : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceParams()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getMlSkinBrightLevel()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v3, "ArcSoft_Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u78e8\u76ae : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceParams()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSkinSoftenLevel()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v2, "ArcSoft_Debug"

    const-string v3, "getFlasslessParamByFaceID()\t\t>>>>\t\tend\r\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceParams()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 242
    .local v1, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    return-object v2
.end method

.method abstract initPicPost()V
.end method

.method public initpicPostProcess()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "PicPostProcessJNI"

    const-string v1, "initpicPostProcess()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->createPicPostProcessJNI(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mPicPostProcessJNI:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

    .line 104
    return-void
.end method

.method public setCommand(Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;)V
    .locals 1
    .param p1, "command"    # Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    .line 225
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceRects()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRects:Ljava/util/ArrayList;

    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceRolls()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRolls:[I

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceParams()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    .line 228
    return-void
.end method

.method public setFaceEffectParams(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "mFaceParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    .line 152
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->setmFaceParams(Ljava/util/ArrayList;)V

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 155
    const-string v1, "ArcSoft_Debug"

    const-string v2, "\r\n setPicPostFaceRectRoll()\t\t>>>>\tstart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v2, "ArcSoft_Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5927\u773c : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceParams()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmEyeEnlargmentLevel()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v2, "ArcSoft_Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u7626\u8138 : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceParams()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSlenderFaceLevel()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v2, "ArcSoft_Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u7f8e\u767d : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceParams()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getMlSkinBrightLevel()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v2, "ArcSoft_Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u78e8\u76ae : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceParams()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSkinSoftenLevel()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v1, "ArcSoft_Debug"

    const-string/jumbo v2, "setPicPostFaceRectRoll()\t\t>>>>\tend"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method public setFlassLessParamByFaceID(ILcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;)V
    .locals 1
    .param p1, "faceID"    # I
    .param p2, "mDefaultParam"    # Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 247
    return-void
.end method

.method public setPicPostFaceRectRoll(Ljava/util/ArrayList;[I)V
    .locals 5
    .param p2, "mFaceRolls"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "mFaceRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    if-nez p2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 133
    .local v1, "mFaceRollsTMP":[I
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 134
    const/4 v2, 0x0

    aput v2, v1, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRolls:[I

    .line 142
    .end local v1    # "mFaceRollsTMP":[I
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRects:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->setmFaceRects(Ljava/util/ArrayList;)V

    .line 143
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRolls:[I

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->setmFaceRolls([I)V

    .line 145
    const-string v2, "ArcSoft_Debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FaceRect Number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceRects()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v2, "ArcSoft_Debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FaceRoll Number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->command:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceRolls()[I

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 139
    :cond_2
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->faceRolls:[I

    goto :goto_2
.end method

.method public setPicPostSrcBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "srcBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftFaceBitmapUtils;->mPicPostProcessJNI:Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->picPostProcess_PreProcessFace(Landroid/graphics/Bitmap;)J

    .line 117
    const-string v0, "ArcSoft_Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "srcBitmap Width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v0, "ArcSoft_Debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "srcBitmap Height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v0, "ArcSoft_Debug"

    const-string/jumbo v1, "srcBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method abstract uninitPicPost()V
.end method

.method public uninitpicPostProcess()V
    .locals 0

    .prologue
    .line 109
    invoke-static {}, Lcom/lenovo/scg/gallery3d/picPostProcess/PicPostProcessJNI;->destroyPicPostProcess()V

    .line 111
    return-void
.end method
