.class public final enum Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;
.super Ljava/lang/Enum;
.source "ErrorHandleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/utils/ErrorHandleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorMsgMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

.field public static final enum Log_D:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

.field public static final enum Log_E:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

.field public static final enum Log_I:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

.field public static final enum Log_V:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

.field public static final enum Log_W:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

.field public static final enum RuntimeException:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    new-instance v0, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    const-string v1, "RuntimeException"

    invoke-direct {v0, v1, v3}, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->RuntimeException:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    new-instance v0, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    const-string v1, "Log_E"

    invoke-direct {v0, v1, v4}, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->Log_E:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    new-instance v0, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    const-string v1, "Log_W"

    invoke-direct {v0, v1, v5}, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->Log_W:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    new-instance v0, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    const-string v1, "Log_V"

    invoke-direct {v0, v1, v6}, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->Log_V:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    new-instance v0, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    const-string v1, "Log_D"

    invoke-direct {v0, v1, v7}, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->Log_D:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    new-instance v0, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    const-string v1, "Log_I"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->Log_I:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    sget-object v1, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->RuntimeException:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    aput-object v1, v0, v3

    sget-object v1, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->Log_E:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    aput-object v1, v0, v4

    sget-object v1, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->Log_W:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    aput-object v1, v0, v5

    sget-object v1, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->Log_V:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    aput-object v1, v0, v6

    sget-object v1, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->Log_D:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->Log_I:Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    aput-object v2, v0, v1

    sput-object v0, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->ENUM$VALUES:[Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    return-object v0
.end method

.method public static values()[Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;->ENUM$VALUES:[Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    array-length v1, v0

    new-array v2, v1, [Lcn/jingling/lib/utils/ErrorHandleHelper$ErrorMsgMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
