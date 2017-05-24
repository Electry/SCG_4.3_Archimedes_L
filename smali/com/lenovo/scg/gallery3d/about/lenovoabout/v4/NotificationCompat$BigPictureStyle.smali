.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation


# instance fields
.field mBigLargeIcon:Landroid/graphics/Bitmap;

.field mBigLargeIconSet:Z

.field mPicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;-><init>()V

    .line 656
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;-><init>()V

    .line 659
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;->setBuilder(Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;)V

    .line 660
    return-void
.end method


# virtual methods
.method public bigLargeIcon(Landroid/graphics/Bitmap;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    .line 694
    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 684
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    .line 685
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 667
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 668
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 675
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    .line 677
    return-object p0
.end method
