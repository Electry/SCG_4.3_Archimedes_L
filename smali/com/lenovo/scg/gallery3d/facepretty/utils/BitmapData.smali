.class public Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;
.super Ljava/lang/Object;
.source "BitmapData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapData"

.field private static instance:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;


# instance fields
.field private baseBitmap:Landroid/graphics/Bitmap;

.field private circleBitmap:Landroid/graphics/Bitmap;

.field private effectBitmap:Landroid/graphics/Bitmap;

.field private effectFaceBitmap:Landroid/graphics/Bitmap;

.field private faceBitmap:Landroid/graphics/Bitmap;

.field private faceRectClickBitmap:Landroid/graphics/Bitmap;

.field private isDoingFacePretty:Z

.field private mContext:Landroid/content/Context;

.field private maskBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->instance:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "inContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->mContext:Landroid/content/Context;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->isDoingFacePretty:Z

    .line 23
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->baseBitmap:Landroid/graphics/Bitmap;

    .line 25
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->effectBitmap:Landroid/graphics/Bitmap;

    .line 27
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->circleBitmap:Landroid/graphics/Bitmap;

    .line 29
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->faceBitmap:Landroid/graphics/Bitmap;

    .line 31
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->effectFaceBitmap:Landroid/graphics/Bitmap;

    .line 33
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->faceRectClickBitmap:Landroid/graphics/Bitmap;

    .line 35
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->maskBitmap:Landroid/graphics/Bitmap;

    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;
    .locals 1
    .param p0, "inContext"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->instance:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->instance:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    .line 45
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->instance:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    return-object v0
.end method

.method private recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "needRecycleBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 123
    const/4 p1, 0x0

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public getBaseBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->baseBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCircleBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const v1, 0x7f02054b

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->circleBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->circleBitmap:Landroid/graphics/Bitmap;

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->circleBitmap:Landroid/graphics/Bitmap;

    .line 188
    :goto_0
    return-object v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->circleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->circleBitmap:Landroid/graphics/Bitmap;

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->circleBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->circleBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getEffectBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->effectBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "BitmapData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "effectBitmap recycle    \uff1a\uff1a\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->effectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->effectBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getEffectFaceBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->effectFaceBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFaceBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->faceBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFaceRectClickBmp()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->faceRectClickBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMaskBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->maskBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isDoingFacePretty()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->isDoingFacePretty:Z

    return v0
.end method

.method public recycleBaseBitmap()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->baseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->baseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->baseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->baseBitmap:Landroid/graphics/Bitmap;

    .line 136
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 138
    :cond_0
    const-string v1, "BoxControl_DEBUG"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u662f\u5426\u56de\u6536\u6210\u529f\u4e86     "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycleFaceRectClickBmp()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->faceRectClickBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->faceRectClickBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->faceRectClickBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->faceRectClickBitmap:Landroid/graphics/Bitmap;

    .line 91
    :cond_0
    return-void
.end method

.method public relaseAllBitmap()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->circleBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->effectBitmap:Landroid/graphics/Bitmap;

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->faceBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->effectFaceBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->recycleFaceRectClickBmp()V

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    return-void
.end method

.method public setBaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "baseBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->baseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->baseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->baseBitmap:Landroid/graphics/Bitmap;

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->baseBitmap:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_2

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_2
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->baseBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setCircleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "circleBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->circleBitmap:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->circleBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setDoingFacePretty(Z)V
    .locals 0
    .param p1, "isDoingFacePretty"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->isDoingFacePretty:Z

    .line 54
    return-void
.end method

.method public setEffectBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "effectBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->effectBitmap:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->effectBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->effectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->effectBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->effectBitmap:Landroid/graphics/Bitmap;

    .line 176
    :cond_1
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->effectBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setEffectFaceBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "effectFaceBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->effectFaceBitmap:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->effectFaceBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setFaceBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "faceBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->faceBitmap:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->faceBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setFaceRectClickBmp(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->faceRectClickBitmap:Landroid/graphics/Bitmap;

    .line 78
    return-void
.end method

.method public setMaskBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "maskBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->maskBitmap:Landroid/graphics/Bitmap;

    .line 62
    return-void
.end method

.method public setmContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method
