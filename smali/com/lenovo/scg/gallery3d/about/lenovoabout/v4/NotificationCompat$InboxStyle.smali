.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# instance fields
.field mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 784
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;-><init>()V

    .line 782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 785
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .prologue
    .line 787
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Style;-><init>()V

    .line 782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 788
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;->setBuilder(Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;)V

    .line 789
    return-void
.end method


# virtual methods
.method public addLine(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 813
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 796
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 797
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$InboxStyle;->mSummaryTextSet:Z

    .line 806
    return-object p0
.end method
