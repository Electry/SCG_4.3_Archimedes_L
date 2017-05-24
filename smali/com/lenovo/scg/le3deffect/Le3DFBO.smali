.class public Lcom/lenovo/scg/le3deffect/Le3DFBO;
.super Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;
.source "Le3DFBO.java"


# static fields
.field private static final DEBUG_FBO_USAGE:Z = true

.field private static final TAG:Ljava/lang/String; = "Le3DFBOjava"


# instance fields
.field private mHeight:I

.field private mTextureUnitId:I

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->mTextureUnitId:I

    .line 16
    iput p1, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->mWidth:I

    .line 17
    iput p2, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->mHeight:I

    .line 18
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;-><init>()V

    .line 21
    iput p1, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->mWidth:I

    .line 22
    iput p2, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->mHeight:I

    .line 23
    iput p3, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->mTextureUnitId:I

    .line 24
    return-void
.end method

.method constructor <init>(IIIJ)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;-><init>()V

    .line 33
    iput p1, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->mWidth:I

    .line 34
    iput p2, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->mHeight:I

    .line 35
    iput p3, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->mTextureUnitId:I

    .line 36
    iput-wide p4, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->m_handleC:J

    .line 37
    return-void
.end method

.method private native CreateFboC(III)J
.end method

.method private native GetHeightC(J)I
.end method

.method private native GetJpegDataC(J)[B
.end method

.method private native GetPixelsC(J)[B
.end method

.method private native GetTexUnitIDC(J)I
.end method

.method private native GetTextureC(J)I
.end method

.method private native GetWidthC(J)I
.end method

.method private native LockTargetC(J)Z
.end method

.method private native UnlockTargetC(J)V
.end method


# virtual methods
.method protected ConstructC()J
    .locals 5

    .prologue
    .line 85
    const-string v0, "Le3DFBOjava"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTextureUnitId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->mTextureUnitId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    .line 89
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 91
    const-string v2, "Le3DFBOjava"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->mWidth:I

    iget v1, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->mHeight:I

    iget v2, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->mTextureUnitId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->CreateFboC(III)J

    move-result-wide v0

    return-wide v0
.end method

.method protected native DestructC(J)V
.end method

.method getHandleC()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->m_handleC:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->m_handleC:J

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->GetHeightC(J)I

    move-result v0

    return v0
.end method

.method public getJpegData()[B
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->m_handleC:J

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->GetJpegDataC(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getPixels()[B
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->m_handleC:J

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->GetPixelsC(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getTexUnitID()I
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->m_handleC:J

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->GetTexUnitIDC(J)I

    move-result v0

    return v0
.end method

.method public getTexture()I
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->m_handleC:J

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->GetTextureC(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->m_handleC:J

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->GetWidthC(J)I

    move-result v0

    return v0
.end method

.method public lockTarget()Z
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->m_handleC:J

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->LockTargetC(J)Z

    move-result v0

    return v0
.end method

.method public unlockTarget()V
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/Le3DFBO;->m_handleC:J

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->UnlockTargetC(J)V

    .line 69
    return-void
.end method
