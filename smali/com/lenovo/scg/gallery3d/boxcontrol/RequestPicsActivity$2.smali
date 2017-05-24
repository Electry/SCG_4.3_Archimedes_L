.class Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity$2;
.super Ljava/lang/Object;
.source "RequestPicsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->ResponsedViewEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/RequestPicsActivity;->requestMultiPics()V

    .line 65
    return-void
.end method
