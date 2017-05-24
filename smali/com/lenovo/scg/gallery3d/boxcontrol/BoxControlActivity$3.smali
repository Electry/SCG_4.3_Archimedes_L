.class Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$3;
.super Landroid/database/ContentObserver;
.source "BoxControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->setData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/ImageManager;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v2

    # invokes: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->rebake(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$900(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;ZZ)V

    .line 228
    return-void
.end method
