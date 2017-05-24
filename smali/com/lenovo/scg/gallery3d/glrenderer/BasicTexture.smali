.class public abstract Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
.super Ljava/lang/Object;
.source "BasicTexture.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/glrenderer/Texture;


# static fields
.field private static final MAX_TEXTURE_SIZE:I = 0x1000

.field protected static final STATE_ERROR:I = -0x1

.field protected static final STATE_LOADED:I = 0x1

.field protected static final STATE_UNLOADED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BasicTexture"

.field protected static final UNSPECIFIED:I = -0x1

.field private static sAllTextures:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInFinalizer:Ljava/lang/ThreadLocal;


# instance fields
.field protected mCanvasRef:Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

.field protected mClipRect:Landroid/graphics/Rect;

.field protected mEnableBlending:Z

.field private mHasBorder:Z

.field protected mHeight:I

.field protected mId:I

.field protected mIsDrawCenter:Z

.field protected mIsEnableClip:Z

.field protected mState:I

.field protected mTextureHeight:I

.field protected mTextureUnitId:I

.field protected mTextureWidth:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    .line 74
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;-><init>(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 98
    return-void
.end method

.method protected constructor <init>(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 3
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "id"    # I
    .param p3, "state"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mId:I

    .line 50
    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mWidth:I

    .line 52
    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mHeight:I

    .line 70
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mCanvasRef:Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .line 77
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->setAssociatedCanvas(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 78
    iput v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mTextureUnitId:I

    .line 79
    iput p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mId:I

    .line 80
    iput p3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mState:I

    .line 82
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mIsEnableClip:Z

    .line 83
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mIsDrawCenter:Z

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mClipRect:Landroid/graphics/Rect;

    .line 85
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mEnableBlending:Z

    .line 87
    sget-object v1, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private freeResource()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mCanvasRef:Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .line 223
    .local v0, "canvas":Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mId:I

    if-eq v1, v2, :cond_0

    .line 224
    invoke-interface {v0, p0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->unloadTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z

    .line 225
    iput v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mId:I

    .line 227
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mState:I

    .line 228
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->setAssociatedCanvas(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 229
    return-void
.end method

.method public static inFinalizer()Z
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static invalidateAllTextures()V
    .locals 4

    .prologue
    .line 254
    sget-object v3, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 255
    :try_start_0
    sget-object v2, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 256
    .local v1, "t":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    const/4 v2, 0x0

    iput v2, v1, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mState:I

    .line 257
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->setAssociatedCanvas(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 258
    const/4 v2, -0x1

    iput v2, v1, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mId:I

    goto :goto_0

    .line 260
    .end local v1    # "t":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    return-void
.end method

.method public static yieldAllTextures()V
    .locals 4

    .prologue
    .line 246
    sget-object v3, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 247
    :try_start_0
    sget-object v2, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 248
    .local v1, "t":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->yield()V

    goto :goto_0

    .line 250
    .end local v1    # "t":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    return-void
.end method


# virtual methods
.method public IsDrawCenter()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mIsDrawCenter:Z

    return v0
.end method

.method public IsEnableClip()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mIsEnableClip:Z

    return v0
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v5

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 181
    return-void
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 185
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 186
    return-void
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "target"    # Landroid/graphics/RectF;

    .prologue
    .line 190
    invoke-interface {p1, p0, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 191
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 233
    sget-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const-class v1, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->recycle()V

    .line 235
    sget-object v0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 236
    return-void
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getEnableBlending()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mEnableBlending:Z

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mId:I

    return v0
.end method

.method protected abstract getTarget()I
.end method

.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mTextureHeight:I

    return v0
.end method

.method protected getTextureUnitId()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mTextureUnitId:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mTextureWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mWidth:I

    return v0
.end method

.method public hasBorder()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mHasBorder:Z

    return v0
.end method

.method public isFlippedVertically()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 203
    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onBind(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Z
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->freeResource()V

    .line 210
    return-void
.end method

.method protected setAssociatedCanvas(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 0
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mCanvasRef:Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .line 102
    return-void
.end method

.method protected setBorder(Z)V
    .locals 0
    .param p1, "hasBorder"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mHasBorder:Z

    .line 176
    return-void
.end method

.method public setClipRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mClipRect:Landroid/graphics/Rect;

    .line 283
    return-void
.end method

.method public setDrawCenter(Z)V
    .locals 0
    .param p1, "drawCenter"    # Z

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mIsDrawCenter:Z

    .line 287
    return-void
.end method

.method public setEnableBlending(Z)V
    .locals 0
    .param p1, "IsEnableBlending"    # Z

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mEnableBlending:Z

    .line 295
    return-void
.end method

.method public setEnableClip(Z)V
    .locals 0
    .param p1, "IsEnableClip"    # Z

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mIsEnableClip:Z

    .line 271
    return-void
.end method

.method protected setLoadState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 264
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mState:I

    .line 265
    return-void
.end method

.method public setSize(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v1, 0x1000

    .line 109
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mWidth:I

    .line 110
    iput p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mHeight:I

    .line 115
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mTextureWidth:I

    .line 116
    iput p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mTextureHeight:I

    .line 120
    instance-of v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mTextureWidth:I

    .line 122
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mTextureHeight:I

    .line 126
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mTextureWidth:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mTextureHeight:I

    if-le v0, v1, :cond_2

    .line 127
    :cond_1
    const-string v0, "BasicTexture"

    const-string/jumbo v1, "texture is too large: %d x %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mTextureWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->mTextureHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :cond_2
    return-void
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->freeResource()V

    .line 219
    return-void
.end method
