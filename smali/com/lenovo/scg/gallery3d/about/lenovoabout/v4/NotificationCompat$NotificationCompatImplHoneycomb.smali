.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImplHoneycomb;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$NotificationCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplHoneycomb"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 10
    .param p1, "b"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .prologue
    .line 99
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v2, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    iget-object v5, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    iget v6, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mNumber:I

    iget-object v7, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    iget-object v8, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    iget-object v9, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-static/range {v0 .. v9}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompatHoneycomb;->add(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
