.class public Lcom/lenovo/scg/camera/rewind/RewindProperty;
.super Ljava/lang/Object;
.source "RewindProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "REwindProperty"

.field private static sInstance:Lcom/lenovo/scg/camera/rewind/RewindProperty;


# instance fields
.field private final ENLARGE_RATIO:F

.field public focusFaceId:I

.field private mCustomRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTargetRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mCustomRects:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mTargetRects:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mFaceRects:Ljava/util/ArrayList;

    .line 123
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->ENLARGE_RATIO:F

    .line 29
    return-void
.end method

.method private clipToSquare(Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;)V
    .locals 4
    .param p1, "rect"    # Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 76
    iget v0, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->width:F

    iget v1, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->height:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 77
    iget v0, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sx:F

    iget v1, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->width:F

    iget v2, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->height:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sx:F

    .line 78
    iget v0, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->height:F

    iput v0, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->width:F

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget v0, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->height:F

    iget v1, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->width:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 80
    iget v0, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sy:F

    iget v1, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->height:F

    iget v2, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->width:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sy:F

    .line 81
    iget v0, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->width:F

    iput v0, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->height:F

    goto :goto_0
.end method

.method private enlargeRects(Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;)Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    .locals 11
    .param p1, "small"    # Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    .param p2, "big"    # Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const v8, 0x3e99999a    # 0.3f

    .line 127
    const/4 v4, 0x4

    new-array v0, v4, [F

    .line 128
    .local v0, "enlarge":[F
    iget v4, p2, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sx:F

    iget v5, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sx:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v8

    aput v4, v0, v10

    .line 129
    const/4 v4, 0x1

    iget v5, p2, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sy:F

    iget v6, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sy:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v8

    aput v5, v0, v4

    .line 130
    const/4 v4, 0x2

    iget v5, p2, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sx:F

    iget v6, p2, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->width:F

    add-float/2addr v5, v6

    iget v6, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sx:F

    iget v7, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->width:F

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    mul-float/2addr v5, v8

    aput v5, v0, v4

    .line 131
    const/4 v4, 0x3

    iget v5, p2, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sy:F

    iget v6, p2, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->height:F

    add-float/2addr v5, v6

    iget v6, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sy:F

    iget v7, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->height:F

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    mul-float/2addr v5, v8

    aput v5, v0, v4

    .line 133
    aget v4, v0, v10

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 134
    .local v2, "minEnlarge":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 135
    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_0

    .line 136
    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_1
    new-instance v3, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    invoke-direct {v3}, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;-><init>()V

    .line 140
    .local v3, "newRect":Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    iget v4, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sx:F

    sub-float/2addr v4, v2

    iput v4, v3, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sx:F

    .line 141
    iget v4, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sy:F

    sub-float/2addr v4, v2

    iput v4, v3, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sy:F

    .line 142
    iget v4, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->width:F

    mul-float v5, v2, v9

    add-float/2addr v4, v5

    iput v4, v3, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->width:F

    .line 143
    iget v4, p1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->height:F

    mul-float v5, v2, v9

    add-float/2addr v4, v5

    iput v4, v3, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->height:F

    .line 145
    return-object v3
.end method

.method public static getInstance()Lcom/lenovo/scg/camera/rewind/RewindProperty;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->sInstance:Lcom/lenovo/scg/camera/rewind/RewindProperty;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/lenovo/scg/camera/rewind/RewindProperty;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/rewind/RewindProperty;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->sInstance:Lcom/lenovo/scg/camera/rewind/RewindProperty;

    .line 35
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->sInstance:Lcom/lenovo/scg/camera/rewind/RewindProperty;

    return-object v0
.end method


# virtual methods
.method public addFaceRect(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    .line 65
    .local v1, "rect":Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->clipToSquare(Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;)V

    goto :goto_0

    .line 67
    .end local v1    # "rect":Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public addTargetRect(Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;)V
    .locals 1
    .param p1, "rect"    # Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->clipToSquare(Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;)V

    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mTargetRects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public clearFaceRect()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61
    return-void
.end method

.method public clearTargetRect()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mTargetRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    return-void
.end method

.method public createCustomRects()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 150
    iget-object v5, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mCustomRects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 152
    iget-object v5, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 165
    :cond_0
    return-void

    .line 154
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 155
    .local v1, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mTargetRects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-static {v4}, Lcom/lenovo/scg/camera/CameraUtil;->Assert(Z)V

    .line 156
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mTargetRects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 158
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 159
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    iget-object v5, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mTargetRects:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    invoke-direct {p0, v4, v5}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->enlargeRects(Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;)Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    move-result-object v0

    .line 160
    .local v0, "cRect":Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    iget-object v4, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mTargetRects:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    iget v4, v4, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->id:I

    iput v4, v0, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->id:I

    .line 161
    iget v4, v0, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->width:F

    sget v5, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    div-int/lit8 v5, v5, 0x8

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 162
    iget-object v4, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mCustomRects:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getFaceRects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mFaceRects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetNum()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mTargetRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTargetRect(I)Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mTargetRects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    return-object v0
.end method

.method public getTargetRectFromId(I)Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 98
    iget-object v2, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mTargetRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    .line 99
    .local v1, "rect":Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    iget v2, v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->id:I

    if-ne p1, v2, :cond_0

    .line 103
    .end local v1    # "rect":Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    invoke-direct {v1}, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;-><init>()V

    goto :goto_0
.end method

.method public getTargetRects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mTargetRects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isFaceRectArea(IFF[I)Z
    .locals 8
    .param p1, "index"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "id"    # [I

    .prologue
    const/4 v7, 0x0

    .line 107
    iget-object v6, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le p1, v6, :cond_0

    move v6, v7

    .line 120
    :goto_0
    return v6

    .line 110
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    .line 111
    .local v3, "rect":Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    iget v4, v3, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sx:F

    .line 112
    .local v4, "sx":F
    iget v5, v3, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sy:F

    .line 113
    .local v5, "sy":F
    iget v6, v3, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->width:F

    add-float v0, v4, v6

    .line 114
    .local v0, "ex":F
    iget v6, v3, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->height:F

    add-float v1, v5, v6

    .line 115
    .local v1, "ey":F
    cmpg-float v6, v4, p2

    if-gtz v6, :cond_1

    cmpg-float v6, p2, v0

    if-gtz v6, :cond_1

    cmpg-float v6, v5, p3

    if-gtz v6, :cond_1

    cmpg-float v6, p3, v1

    if-gtz v6, :cond_1

    .line 116
    iget v6, v3, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->id:I

    aput v6, p4, v7

    .line 117
    const/4 v6, 0x1

    goto :goto_0

    .end local v0    # "ex":F
    .end local v1    # "ey":F
    .end local v3    # "rect":Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    .end local v4    # "sx":F
    .end local v5    # "sy":F
    :cond_2
    move v6, v7

    .line 120
    goto :goto_0
.end method

.method public updateCustomRects2FaceRects(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mCustomRects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public updateCustomRects2TargetRects()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mTargetRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mTargetRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mTargetRects:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/RewindProperty;->mCustomRects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
