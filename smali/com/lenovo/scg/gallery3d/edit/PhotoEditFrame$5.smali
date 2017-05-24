.class Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$5;
.super Ljava/lang/Object;
.source "PhotoEditFrame.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->initSharePopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$5;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 728
    const-string v0, "PhotoEditFrame"

    const-string v1, "kbg374, onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-void
.end method
