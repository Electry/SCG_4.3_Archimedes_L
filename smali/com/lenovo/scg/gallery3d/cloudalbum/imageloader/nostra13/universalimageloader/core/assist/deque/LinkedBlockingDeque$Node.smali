.class final Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field next:Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field prev:Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    .local p1, "x":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 103
    return-void
.end method
