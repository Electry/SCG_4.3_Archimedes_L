.class public Lcom/lenovo/scg/gallery3d/util/LinkedNode;
.super Ljava/lang/Object;
.source "LinkedNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;
    }
.end annotation


# instance fields
.field mNext:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

.field mPrev:Lcom/lenovo/scg/gallery3d/util/LinkedNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p0, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mNext:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    iput-object p0, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mPrev:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    .line 27
    return-void
.end method

.method public static newList()Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/lenovo/scg/gallery3d/util/LinkedNode;",
            ">()",
            "Lcom/lenovo/scg/gallery3d/util/LinkedNode$List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/util/LinkedNode$List;-><init>()V

    return-object v0
.end method


# virtual methods
.method public insert(Lcom/lenovo/scg/gallery3d/util/LinkedNode;)V
    .locals 1
    .param p1, "node"    # Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mNext:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    iput-object v0, p1, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mNext:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mNext:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    iput-object p1, v0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mPrev:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    .line 32
    iput-object p0, p1, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mPrev:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mNext:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    .line 34
    return-void
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mNext:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    if-ne v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mPrev:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mNext:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mNext:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mNext:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mPrev:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mPrev:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mNext:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/LinkedNode;->mPrev:Lcom/lenovo/scg/gallery3d/util/LinkedNode;

    .line 41
    return-void
.end method
