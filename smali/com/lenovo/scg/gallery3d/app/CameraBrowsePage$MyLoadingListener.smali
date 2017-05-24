.class Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$MyLoadingListener;
.super Ljava/lang/Object;
.source "CameraBrowsePage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)V
    .locals 0

    .prologue
    .line 928
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$1;

    .prologue
    .line 928
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$MyLoadingListener;-><init>(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 2
    .param p1, "loadingFailed"    # Z

    .prologue
    .line 937
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    const/4 v1, 0x1

    # invokes: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->clearLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$2000(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;I)V

    .line 952
    return-void
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage$MyLoadingListener;->this$0:Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    const/4 v1, 0x1

    # invokes: Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->setLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;->access$2200(Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;I)V

    .line 933
    return-void
.end method
