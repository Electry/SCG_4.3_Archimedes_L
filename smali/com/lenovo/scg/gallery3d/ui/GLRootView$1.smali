.class Lcom/lenovo/scg/gallery3d/ui/GLRootView$1;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/GLRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/GLRootView$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/GLRootView;->superRequestRender()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->access$100(Lcom/lenovo/scg/gallery3d/ui/GLRootView;)V

    .line 265
    return-void
.end method
