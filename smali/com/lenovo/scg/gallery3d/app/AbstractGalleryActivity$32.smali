.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$32;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initActionBar(Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .prologue
    .line 4369
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$32;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 4373
    const-string v0, "AbstractGalleryActivity"

    const-string v1, "kbg374, onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4374
    return-void
.end method
