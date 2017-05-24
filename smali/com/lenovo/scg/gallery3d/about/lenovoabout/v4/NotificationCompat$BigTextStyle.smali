.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigTextStyle;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# instance fields
.field mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 722
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;-><init>()V

    .line 723
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;-><init>()V

    .line 726
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigTextStyle;->setBuilder(Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;)V

    .line 727
    return-void
.end method


# virtual methods
.method public bigText(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigTextStyle;
    .locals 0
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 753
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigTextStyle;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 734
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 735
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 742
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 743
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    .line 744
    return-object p0
.end method
