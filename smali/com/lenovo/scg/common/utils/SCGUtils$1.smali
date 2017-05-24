.class Lcom/lenovo/scg/common/utils/SCGUtils$1;
.super Ljava/lang/Object;
.source "SCGUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/utils/SCGUtils;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/utils/SCGUtils;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/utils/SCGUtils;)V
    .locals 0

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/SCGUtils$1;->this$0:Lcom/lenovo/scg/common/utils/SCGUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1103
    invoke-static {}, Lcom/lenovo/lps/sus/SUS;->finish()V

    .line 1104
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils$1;->this$0:Lcom/lenovo/scg/common/utils/SCGUtils;

    # getter for: Lcom/lenovo/scg/common/utils/SCGUtils;->mAutoUpdateDialog:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;
    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->access$000(Lcom/lenovo/scg/common/utils/SCGUtils;)Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->dismiss()V

    .line 1105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->UPDATING_VERSION:Z

    .line 1106
    return-void
.end method
