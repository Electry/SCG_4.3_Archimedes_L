.class public Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
.super Ljava/lang/Object;
.source "VREngineDataBuffer.java"


# instance fields
.field public buffer:[S

.field private curSize:I

.field public idx1:I

.field public idx2:I

.field private maxSize:I

.field public overflow:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxsize"    # I

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->overflow:Z

    .line 5
    iput v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx1:I

    .line 6
    iput v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx2:I

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->buffer:[S

    .line 8
    iput v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->maxSize:I

    .line 9
    iput v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    .line 26
    iput p1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->maxSize:I

    .line 27
    iget v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->maxSize:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->buffer:[S

    .line 28
    iput v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx1:I

    .line 29
    iput v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx2:I

    .line 30
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->overflow:Z

    .line 31
    return-void
.end method

.method private idx1Add()I
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx1:I

    .line 121
    iget v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx1:I

    iget v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->maxSize:I

    if-lt v0, v1, :cond_0

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->overflow:Z

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx1:I

    .line 125
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx1:I

    return v0
.end method

.method private idx2Add()I
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx2:I

    .line 131
    iget v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx2:I

    iget v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->maxSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx2:I

    .line 132
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx2:I

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->buffer:[S

    .line 35
    return-void
.end method

.method public getCurSize()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    return v0
.end method

.method public getShort([SI)I
    .locals 5
    .param p1, "data"    # [S
    .param p2, "size"    # I

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 66
    iget v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    sub-int/2addr v2, v0

    if-gtz v2, :cond_1

    .line 69
    :cond_0
    return v1

    .line 67
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->buffer:[S

    iget v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx2:I

    add-int/2addr v2, v0

    iget v4, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->maxSize:I

    if-lt v2, v4, :cond_2

    iget v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx2:I

    add-int/2addr v2, v0

    iget v4, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->maxSize:I

    sub-int/2addr v2, v4

    :goto_1
    aget-short v2, v3, v2

    aput-short v2, p1, v0

    .line 64
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_2
    iget v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx2:I

    add-int/2addr v2, v0

    goto :goto_1
.end method

.method public readBuffer([SII)I
    .locals 8
    .param p1, "data"    # [S
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 88
    const/4 v5, 0x0

    .line 89
    .local v5, "len":I
    const/4 v3, 0x1

    .line 90
    .local v3, "isheader":Z
    iget-boolean v7, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->overflow:Z

    if-nez v7, :cond_4

    .line 91
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_4

    .line 92
    iget v7, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->maxSize:I

    if-ge v2, v7, :cond_3

    .line 93
    if-eqz v3, :cond_2

    .line 94
    const/4 v6, 0x0

    .line 95
    .local v6, "sum":I
    const/4 v1, 0x0

    .line 96
    .local v1, "cnt":I
    move v4, v2

    .local v4, "k":I
    :goto_1
    add-int/lit8 v7, v2, 0x50

    if-ge v4, v7, :cond_0

    if-ge v4, p3, :cond_0

    .line 97
    iget-object v7, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->buffer:[S

    aget-short v7, v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 96
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 101
    :cond_0
    div-int v0, v6, v1

    .line 102
    .local v0, "avg":I
    const/16 v7, 0x32

    if-ge v0, v7, :cond_1

    .line 103
    add-int/2addr v2, v1

    .line 104
    goto :goto_0

    .line 106
    :cond_1
    const/4 v3, 0x0

    .line 108
    .end local v0    # "avg":I
    .end local v1    # "cnt":I
    .end local v4    # "k":I
    .end local v6    # "sum":I
    :cond_2
    const/4 v3, 0x0

    .line 109
    iget-object v7, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->buffer:[S

    aget-short v7, v7, v2

    aput-short v7, p1, v5

    .line 110
    add-int/lit8 v5, v5, 0x1

    .line 112
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v2    # "i":I
    :cond_4
    return v5
.end method

.method public readShort([SI)I
    .locals 4
    .param p1, "data"    # [S
    .param p2, "size"    # I

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 77
    iget v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    if-nez v2, :cond_1

    .line 83
    :cond_0
    return v1

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->buffer:[S

    iget v3, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx2:I

    aget-short v2, v2, v3

    aput-short v2, p1, v0

    .line 79
    invoke-direct {p0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx2Add()I

    .line 80
    iget v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    .line 81
    iget v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    if-gez v2, :cond_2

    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    .line 75
    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    .line 19
    iput v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx1:I

    .line 20
    iput v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx2:I

    .line 21
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->overflow:Z

    .line 22
    return-void
.end method

.method public restart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 137
    iget v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx1:I

    iget v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx2:I

    sub-int/2addr v1, v2

    add-int/lit16 v1, v1, 0xc80

    iput v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    .line 138
    iget v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    iget v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->maxSize:I

    if-lt v1, v2, :cond_1

    :cond_0
    iput v5, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    .line 139
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    iget v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx1:I

    if-ge v1, v2, :cond_3

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    if-ge v0, v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->buffer:[S

    iget v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->buffer:[S

    iget v4, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx1:I

    sub-int/2addr v4, v0

    aget-short v3, v3, v4

    aput-short v3, v1, v2

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    iput v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx1:I

    .line 147
    .end local v0    # "i":I
    :goto_1
    iput v5, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx2:I

    .line 148
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->overflow:Z

    .line 149
    return-void

    .line 145
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx1:I

    iput v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    goto :goto_1
.end method

.method public writeShort([SI)I
    .locals 5
    .param p1, "data"    # [S
    .param p2, "size"    # I

    .prologue
    const/4 v4, 0x1

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 41
    iget-object v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->buffer:[S

    iget v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx1:I

    aget-short v3, p1, v0

    aput-short v3, v1, v2

    .line 42
    invoke-direct {p0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx1Add()I

    .line 43
    iget v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    .line 44
    iget v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    iget v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->maxSize:I

    if-le v1, v2, :cond_0

    .line 45
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->overflow:Z

    .line 46
    iget v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->maxSize:I

    iput v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    .line 39
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->curSize:I

    iget v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->maxSize:I

    if-ne v1, v2, :cond_2

    .line 51
    iget v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx1:I

    iput v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->idx2:I

    .line 53
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->maxSize:I

    if-le p2, v1, :cond_3

    .line 54
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->overflow:Z

    .line 55
    iget p2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->maxSize:I

    .line 58
    .end local p2    # "size":I
    :cond_3
    return p2
.end method
