.class Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$2;
.super Ljava/lang/Object;
.source "CropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->startFinishOutput()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->access$000(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)V

    .line 175
    return-void
.end method
