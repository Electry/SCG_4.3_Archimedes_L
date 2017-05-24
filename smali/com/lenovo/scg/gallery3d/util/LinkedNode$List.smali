.class public Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;
.super Ljava/lang/Object;
.source "LinkedNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/util/LinkedNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/lenovo/scg/gallery3d/util/LinkedNode;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHead:Lcom/lenovo/scg/gallery3d/util/LinkedNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;, "Lcom/lenovo/scg/gallery3d/util/LinkedNode$List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/util/LinkedNode;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;->mHead:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    return-void
.end method


# virtual methods
.method public getFirst()Lcom/lenovo/scg/gallery3d/util/LinkedNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;, "Lcom/lenovo/scg/gallery3d/util/LinkedNode$List<TT;>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;->mHead:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mNext:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;->mHead:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;->mHead:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mNext:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    goto :goto_0
.end method

.method public getLast()Lcom/lenovo/scg/gallery3d/util/LinkedNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;, "Lcom/lenovo/scg/gallery3d/util/LinkedNode$List<TT;>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;->mHead:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mPrev:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;->mHead:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;->mHead:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mPrev:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    goto :goto_0
.end method

.method public insertLast(Lcom/lenovo/scg/gallery3d/util/LinkedNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;, "Lcom/lenovo/scg/gallery3d/util/LinkedNode$List<TT;>;"
    .local p1, "node":Lcom/lenovo/scg/gallery3d/util/LinkedNode;, "TT;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;->mHead:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mPrev:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->insert(Lcom/lenovo/scg/gallery3d/util/LinkedNode;)V

    .line 50
    return-void
.end method

.method public nextOf(Lcom/lenovo/scg/gallery3d/util/LinkedNode;)Lcom/lenovo/scg/gallery3d/util/LinkedNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;, "Lcom/lenovo/scg/gallery3d/util/LinkedNode$List<TT;>;"
    .local p1, "node":Lcom/lenovo/scg/gallery3d/util/LinkedNode;, "TT;"
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mNext:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;->mHead:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mNext:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    goto :goto_0
.end method

.method public previousOf(Lcom/lenovo/scg/gallery3d/util/LinkedNode;)Lcom/lenovo/scg/gallery3d/util/LinkedNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;, "Lcom/lenovo/scg/gallery3d/util/LinkedNode$List<TT;>;"
    .local p1, "node":Lcom/lenovo/scg/gallery3d/util/LinkedNode;, "TT;"
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mPrev:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;->mHead:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mPrev:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    goto :goto_0
.end method
