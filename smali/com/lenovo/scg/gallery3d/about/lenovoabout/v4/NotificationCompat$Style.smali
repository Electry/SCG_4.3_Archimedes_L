.class public abstract Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field mBuilder:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;->mSummaryTextSet:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;->mBuilder:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    if-eqz v1, :cond_0

    .line 624
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;->mBuilder:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 626
    :cond_0
    return-object v0
.end method

.method public setBuilder(Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;->mBuilder:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    if-eq v0, p1, :cond_0

    .line 614
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;->mBuilder:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .line 615
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;->mBuilder:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;->mBuilder:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setStyle(Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .line 619
    :cond_0
    return-void
.end method
