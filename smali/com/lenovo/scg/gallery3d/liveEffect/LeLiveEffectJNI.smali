.class public Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;
.super Ljava/lang/Object;
.source "LeLiveEffectJNI.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final LOG:Ljava/lang/String; = "ART"


# instance fields
.field private mEffectEngineGalleryHandler:I

.field private mEffectEngineHandler:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    :try_start_0
    const-string v0, "LeCSC"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 24
    const-string v0, "Leskia"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    const-string v0, "LeImage"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    const-string/jumbo v0, "scg_stillimage_effect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "flag"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->createNativeObject(I)I

    move-result v0

    .line 43
    .local v0, "ret":I
    if-gez p1, :cond_0

    .line 44
    iput v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->mEffectEngineGalleryHandler:I

    .line 45
    const-string/jumbo v1, "wuqinghua"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " createNativeObject = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void

    .line 47
    :cond_0
    iput v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->mEffectEngineHandler:I

    .line 49
    const-string/jumbo v1, "wuqinghua"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " createNativeObject = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final native InitTextureStruct()J
.end method

.method public final native ReleaseTextureBuffer(J)V
.end method

.method public final native SetTextureStruct(J[BII)V
.end method

.method public final native createNativeObject(I)I
.end method

.method public final native createScaledPreview(IIIII[B[B)I
.end method

.method public final native doEffectPicture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I
.end method

.method public final native doEffectPictureForEclair([II)I
.end method

.method public final native finish(I)I
.end method

.method public final native flipHorizontalPreview(II[B[BI)I
.end method

.method public final native initialize(Ljava/lang/String;III)I
.end method

.method public final native setEffectParam(Ljava/lang/String;[III)I
.end method

.method public final native setOrientation(Ljava/lang/String;II)I
.end method

.method public final native setPaletImageData(IIII[I)I
.end method
