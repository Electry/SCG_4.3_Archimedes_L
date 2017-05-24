.class public Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;
.super Ljava/lang/Object;
.source "FaceBeautyJNI.java"


# static fields
.field public static final MAKEUP_SIZE:I = 0x6fbb4

.field public static final OUTLINE_SIZE:I = 0x135b00

.field private static final TAG:Ljava/lang/String; = "FaceBeauty"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMakeupData:[B

.field private mOutlineData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    :try_start_0
    const-string v1, "arcsoft_flawless_face"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v1, "scg_facebeauty_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 57
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 58
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "FaceBeauty"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsatisfiedLinkError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v3, 0x135b00

    const v4, 0x6fbb4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;->mContext:Landroid/content/Context;

    .line 28
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;->mOutlineData:[B

    .line 29
    new-array v3, v4, [B

    iput-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;->mMakeupData:[B

    .line 31
    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 33
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    const-string/jumbo v3, "outline.dat"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    .line 34
    .local v2, "is":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;->mOutlineData:[B

    const/4 v4, 0x0

    const v5, 0x135b00

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 35
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 36
    const-string/jumbo v3, "makeup_basic.dat"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    .line 37
    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;->mMakeupData:[B

    const/4 v4, 0x0

    const v5, 0x6fbb4

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 38
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;->mOutlineData:[B

    iget-object v4, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;->mMakeupData:[B

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;->init([B[B)I

    .line 45
    return-void

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "FaceBeauty"

    const-string v4, "FlawLess_Native getOutlineAndMakeupData exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final native init([B[B)I
.end method

.method public final native release()I
.end method

.method public releaseFaceBeautyJNI()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;->release()I

    .line 49
    iput-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;->mOutlineData:[B

    .line 50
    iput-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;->mMakeupData:[B

    .line 51
    return-void
.end method

.method public final native reset(JJIII[Landroid/graphics/Rect;[I[I[I)I
.end method
