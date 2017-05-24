.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$10;
.super Ljava/lang/Object;
.source "LenovoAboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$10;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mVersionIntroduction:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_0
    return-void

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method
