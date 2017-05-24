.class public Lcn/jingling/lib/utils/TimeChecker;
.super Ljava/lang/Object;
.source "TimeChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/utils/TimeChecker$Checker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeChecker"

.field private static mCheckerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/jingling/lib/utils/TimeChecker$Checker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/jingling/lib/utils/TimeChecker;->mCheckerMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Ljava/lang/String;)V
    .locals 10
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 21
    .local v2, "time":J
    sget-object v1, Lcn/jingling/lib/utils/TimeChecker;->mCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/utils/TimeChecker$Checker;

    .line 22
    .local v0, "checker":Lcn/jingling/lib/utils/TimeChecker$Checker;
    const-string v1, "TimeChecker"

    const-string v4, "%s-%d: %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    # getter for: Lcn/jingling/lib/utils/TimeChecker$Checker;->num:I
    invoke-static {v0}, Lcn/jingling/lib/utils/TimeChecker$Checker;->access$4(Lcn/jingling/lib/utils/TimeChecker$Checker;)I

    move-result v7

    add-int/lit8 v8, v7, 0x1

    invoke-static {v0, v8}, Lcn/jingling/lib/utils/TimeChecker$Checker;->access$3(Lcn/jingling/lib/utils/TimeChecker$Checker;I)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    # getter for: Lcn/jingling/lib/utils/TimeChecker$Checker;->last:J
    invoke-static {v0}, Lcn/jingling/lib/utils/TimeChecker$Checker;->access$5(Lcn/jingling/lib/utils/TimeChecker$Checker;)J

    move-result-wide v8

    sub-long v8, v2, v8

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v0, v2, v3}, Lcn/jingling/lib/utils/TimeChecker$Checker;->access$1(Lcn/jingling/lib/utils/TimeChecker$Checker;J)V

    .line 24
    return-void
.end method

.method public static end(Ljava/lang/String;)V
    .locals 10
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 28
    .local v2, "time":J
    sget-object v1, Lcn/jingling/lib/utils/TimeChecker;->mCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/utils/TimeChecker$Checker;

    .line 29
    .local v0, "checker":Lcn/jingling/lib/utils/TimeChecker$Checker;
    const-string v1, "TimeChecker"

    const-string v4, "Whole time -> %s-%d: %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    # getter for: Lcn/jingling/lib/utils/TimeChecker$Checker;->num:I
    invoke-static {v0}, Lcn/jingling/lib/utils/TimeChecker$Checker;->access$4(Lcn/jingling/lib/utils/TimeChecker$Checker;)I

    move-result v7

    add-int/lit8 v8, v7, 0x1

    invoke-static {v0, v8}, Lcn/jingling/lib/utils/TimeChecker$Checker;->access$3(Lcn/jingling/lib/utils/TimeChecker$Checker;I)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    # getter for: Lcn/jingling/lib/utils/TimeChecker$Checker;->start:J
    invoke-static {v0}, Lcn/jingling/lib/utils/TimeChecker$Checker;->access$6(Lcn/jingling/lib/utils/TimeChecker$Checker;)J

    move-result-wide v8

    sub-long v8, v2, v8

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object v1, Lcn/jingling/lib/utils/TimeChecker;->mCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public static start(Ljava/lang/String;)V
    .locals 4
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 13
    .local v2, "time":J
    new-instance v0, Lcn/jingling/lib/utils/TimeChecker$Checker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/jingling/lib/utils/TimeChecker$Checker;-><init>(Lcn/jingling/lib/utils/TimeChecker$Checker;)V

    .line 14
    .local v0, "checker":Lcn/jingling/lib/utils/TimeChecker$Checker;
    invoke-static {v0, v2, v3}, Lcn/jingling/lib/utils/TimeChecker$Checker;->access$1(Lcn/jingling/lib/utils/TimeChecker$Checker;J)V

    invoke-static {v0, v2, v3}, Lcn/jingling/lib/utils/TimeChecker$Checker;->access$2(Lcn/jingling/lib/utils/TimeChecker$Checker;J)V

    .line 15
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/jingling/lib/utils/TimeChecker$Checker;->access$3(Lcn/jingling/lib/utils/TimeChecker$Checker;I)V

    .line 16
    sget-object v1, Lcn/jingling/lib/utils/TimeChecker;->mCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method
