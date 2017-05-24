.class public Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;
.super Ljava/lang/Object;
.source "ArcSoftSingleCommand.java"


# instance fields
.field mFaceParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;",
            ">;"
        }
    .end annotation
.end field

.field mFaceRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mFaceRolls:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceRects:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceRects:Ljava/util/ArrayList;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceRolls:[I

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceRolls:[I

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceParams:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceParams:Ljava/util/ArrayList;

    .line 52
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;[ILjava/util/ArrayList;)V
    .locals 6
    .param p2, "mFaceRolls"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "mFaceRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .local p3, "mFaceParam":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceRects:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 21
    .local v3, "mRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    .end local v3    # "mRect":Landroid/graphics/Rect;
    :cond_0
    array-length v4, p2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceRolls:[I

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p2

    if-ge v0, v4, :cond_1

    .line 27
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceRolls:[I

    aget v5, p2, v0

    aput v5, v4, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 32
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceParams:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    .line 35
    .local v2, "mParam":Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 38
    .end local v2    # "mParam":Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    :cond_2
    return-void
.end method


# virtual methods
.method public getmFaceParams()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceParams:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmFaceRects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceRects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmFaceRolls()[I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceRolls:[I

    return-object v0
.end method

.method public setmFaceParams(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 75
    .local p1, "mFaceParam":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceParams:Ljava/util/ArrayList;

    .line 76
    return-void
.end method

.method public setmFaceRects(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "mFaceRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceRects:Ljava/util/ArrayList;

    .line 60
    return-void
.end method

.method public setmFaceRolls([I)V
    .locals 0
    .param p1, "mFaceRolls"    # [I

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceRolls:[I

    .line 68
    return-void
.end method

.method public updateFaceParams(Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;I)V
    .locals 2
    .param p1, "mFaceParam"    # Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    .param p2, "faceID"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceParams:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->mFaceParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
