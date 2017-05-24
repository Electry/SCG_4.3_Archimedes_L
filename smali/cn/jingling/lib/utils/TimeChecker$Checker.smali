.class Lcn/jingling/lib/utils/TimeChecker$Checker;
.super Ljava/lang/Object;
.source "TimeChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/utils/TimeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Checker"
.end annotation


# instance fields
.field private last:J

.field private num:I

.field private start:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/jingling/lib/utils/TimeChecker$Checker;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcn/jingling/lib/utils/TimeChecker$Checker;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcn/jingling/lib/utils/TimeChecker$Checker;J)V
    .locals 1

    .prologue
    .line 35
    iput-wide p1, p0, Lcn/jingling/lib/utils/TimeChecker$Checker;->last:J

    return-void
.end method

.method static synthetic access$2(Lcn/jingling/lib/utils/TimeChecker$Checker;J)V
    .locals 1

    .prologue
    .line 34
    iput-wide p1, p0, Lcn/jingling/lib/utils/TimeChecker$Checker;->start:J

    return-void
.end method

.method static synthetic access$3(Lcn/jingling/lib/utils/TimeChecker$Checker;I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcn/jingling/lib/utils/TimeChecker$Checker;->num:I

    return-void
.end method

.method static synthetic access$4(Lcn/jingling/lib/utils/TimeChecker$Checker;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcn/jingling/lib/utils/TimeChecker$Checker;->num:I

    return v0
.end method

.method static synthetic access$5(Lcn/jingling/lib/utils/TimeChecker$Checker;)J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcn/jingling/lib/utils/TimeChecker$Checker;->last:J

    return-wide v0
.end method

.method static synthetic access$6(Lcn/jingling/lib/utils/TimeChecker$Checker;)J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcn/jingling/lib/utils/TimeChecker$Checker;->start:J

    return-wide v0
.end method
