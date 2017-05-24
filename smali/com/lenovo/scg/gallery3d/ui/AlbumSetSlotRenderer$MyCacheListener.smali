.class Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;
.super Ljava/lang/Object;
.source "AlbumSetSlotRenderer.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlidingWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCacheListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$1;

    .prologue
    .line 652
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;-><init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    .line 665
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 656
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->setSlotCount(I)Z

    .line 658
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;->invalidate()V

    .line 660
    return-void
.end method
