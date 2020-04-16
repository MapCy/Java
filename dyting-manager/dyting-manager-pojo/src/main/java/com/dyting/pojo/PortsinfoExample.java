package com.dyting.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PortsinfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PortsinfoExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIpIsNull() {
            addCriterion("id_ip is null");
            return (Criteria) this;
        }

        public Criteria andIdIpIsNotNull() {
            addCriterion("id_ip is not null");
            return (Criteria) this;
        }

        public Criteria andIdIpEqualTo(Integer value) {
            addCriterion("id_ip =", value, "idIp");
            return (Criteria) this;
        }

        public Criteria andIdIpNotEqualTo(Integer value) {
            addCriterion("id_ip <>", value, "idIp");
            return (Criteria) this;
        }

        public Criteria andIdIpGreaterThan(Integer value) {
            addCriterion("id_ip >", value, "idIp");
            return (Criteria) this;
        }

        public Criteria andIdIpGreaterThanOrEqualTo(Integer value) {
            addCriterion("id_ip >=", value, "idIp");
            return (Criteria) this;
        }

        public Criteria andIdIpLessThan(Integer value) {
            addCriterion("id_ip <", value, "idIp");
            return (Criteria) this;
        }

        public Criteria andIdIpLessThanOrEqualTo(Integer value) {
            addCriterion("id_ip <=", value, "idIp");
            return (Criteria) this;
        }

        public Criteria andIdIpIn(List<Integer> values) {
            addCriterion("id_ip in", values, "idIp");
            return (Criteria) this;
        }

        public Criteria andIdIpNotIn(List<Integer> values) {
            addCriterion("id_ip not in", values, "idIp");
            return (Criteria) this;
        }

        public Criteria andIdIpBetween(Integer value1, Integer value2) {
            addCriterion("id_ip between", value1, value2, "idIp");
            return (Criteria) this;
        }

        public Criteria andIdIpNotBetween(Integer value1, Integer value2) {
            addCriterion("id_ip not between", value1, value2, "idIp");
            return (Criteria) this;
        }

        public Criteria andPortIsNull() {
            addCriterion("port is null");
            return (Criteria) this;
        }

        public Criteria andPortIsNotNull() {
            addCriterion("port is not null");
            return (Criteria) this;
        }

        public Criteria andPortEqualTo(Integer value) {
            addCriterion("port =", value, "port");
            return (Criteria) this;
        }

        public Criteria andPortNotEqualTo(Integer value) {
            addCriterion("port <>", value, "port");
            return (Criteria) this;
        }

        public Criteria andPortGreaterThan(Integer value) {
            addCriterion("port >", value, "port");
            return (Criteria) this;
        }

        public Criteria andPortGreaterThanOrEqualTo(Integer value) {
            addCriterion("port >=", value, "port");
            return (Criteria) this;
        }

        public Criteria andPortLessThan(Integer value) {
            addCriterion("port <", value, "port");
            return (Criteria) this;
        }

        public Criteria andPortLessThanOrEqualTo(Integer value) {
            addCriterion("port <=", value, "port");
            return (Criteria) this;
        }

        public Criteria andPortIn(List<Integer> values) {
            addCriterion("port in", values, "port");
            return (Criteria) this;
        }

        public Criteria andPortNotIn(List<Integer> values) {
            addCriterion("port not in", values, "port");
            return (Criteria) this;
        }

        public Criteria andPortBetween(Integer value1, Integer value2) {
            addCriterion("port between", value1, value2, "port");
            return (Criteria) this;
        }

        public Criteria andPortNotBetween(Integer value1, Integer value2) {
            addCriterion("port not between", value1, value2, "port");
            return (Criteria) this;
        }

        public Criteria andTypesIsNull() {
            addCriterion("types is null");
            return (Criteria) this;
        }

        public Criteria andTypesIsNotNull() {
            addCriterion("types is not null");
            return (Criteria) this;
        }

        public Criteria andTypesEqualTo(String value) {
            addCriterion("types =", value, "types");
            return (Criteria) this;
        }

        public Criteria andTypesNotEqualTo(String value) {
            addCriterion("types <>", value, "types");
            return (Criteria) this;
        }

        public Criteria andTypesGreaterThan(String value) {
            addCriterion("types >", value, "types");
            return (Criteria) this;
        }

        public Criteria andTypesGreaterThanOrEqualTo(String value) {
            addCriterion("types >=", value, "types");
            return (Criteria) this;
        }

        public Criteria andTypesLessThan(String value) {
            addCriterion("types <", value, "types");
            return (Criteria) this;
        }

        public Criteria andTypesLessThanOrEqualTo(String value) {
            addCriterion("types <=", value, "types");
            return (Criteria) this;
        }

        public Criteria andTypesLike(String value) {
            addCriterion("types like", value, "types");
            return (Criteria) this;
        }

        public Criteria andTypesNotLike(String value) {
            addCriterion("types not like", value, "types");
            return (Criteria) this;
        }

        public Criteria andTypesIn(List<String> values) {
            addCriterion("types in", values, "types");
            return (Criteria) this;
        }

        public Criteria andTypesNotIn(List<String> values) {
            addCriterion("types not in", values, "types");
            return (Criteria) this;
        }

        public Criteria andTypesBetween(String value1, String value2) {
            addCriterion("types between", value1, value2, "types");
            return (Criteria) this;
        }

        public Criteria andTypesNotBetween(String value1, String value2) {
            addCriterion("types not between", value1, value2, "types");
            return (Criteria) this;
        }

        public Criteria andIsIcsIsNull() {
            addCriterion("is_ics is null");
            return (Criteria) this;
        }

        public Criteria andIsIcsIsNotNull() {
            addCriterion("is_ics is not null");
            return (Criteria) this;
        }

        public Criteria andIsIcsEqualTo(Integer value) {
            addCriterion("is_ics =", value, "isIcs");
            return (Criteria) this;
        }

        public Criteria andIsIcsNotEqualTo(Integer value) {
            addCriterion("is_ics <>", value, "isIcs");
            return (Criteria) this;
        }

        public Criteria andIsIcsGreaterThan(Integer value) {
            addCriterion("is_ics >", value, "isIcs");
            return (Criteria) this;
        }

        public Criteria andIsIcsGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_ics >=", value, "isIcs");
            return (Criteria) this;
        }

        public Criteria andIsIcsLessThan(Integer value) {
            addCriterion("is_ics <", value, "isIcs");
            return (Criteria) this;
        }

        public Criteria andIsIcsLessThanOrEqualTo(Integer value) {
            addCriterion("is_ics <=", value, "isIcs");
            return (Criteria) this;
        }

        public Criteria andIsIcsIn(List<Integer> values) {
            addCriterion("is_ics in", values, "isIcs");
            return (Criteria) this;
        }

        public Criteria andIsIcsNotIn(List<Integer> values) {
            addCriterion("is_ics not in", values, "isIcs");
            return (Criteria) this;
        }

        public Criteria andIsIcsBetween(Integer value1, Integer value2) {
            addCriterion("is_ics between", value1, value2, "isIcs");
            return (Criteria) this;
        }

        public Criteria andIsIcsNotBetween(Integer value1, Integer value2) {
            addCriterion("is_ics not between", value1, value2, "isIcs");
            return (Criteria) this;
        }

        public Criteria andServiceIsNull() {
            addCriterion("service is null");
            return (Criteria) this;
        }

        public Criteria andServiceIsNotNull() {
            addCriterion("service is not null");
            return (Criteria) this;
        }

        public Criteria andServiceEqualTo(String value) {
            addCriterion("service =", value, "service");
            return (Criteria) this;
        }

        public Criteria andServiceNotEqualTo(String value) {
            addCriterion("service <>", value, "service");
            return (Criteria) this;
        }

        public Criteria andServiceGreaterThan(String value) {
            addCriterion("service >", value, "service");
            return (Criteria) this;
        }

        public Criteria andServiceGreaterThanOrEqualTo(String value) {
            addCriterion("service >=", value, "service");
            return (Criteria) this;
        }

        public Criteria andServiceLessThan(String value) {
            addCriterion("service <", value, "service");
            return (Criteria) this;
        }

        public Criteria andServiceLessThanOrEqualTo(String value) {
            addCriterion("service <=", value, "service");
            return (Criteria) this;
        }

        public Criteria andServiceLike(String value) {
            addCriterion("service like", value, "service");
            return (Criteria) this;
        }

        public Criteria andServiceNotLike(String value) {
            addCriterion("service not like", value, "service");
            return (Criteria) this;
        }

        public Criteria andServiceIn(List<String> values) {
            addCriterion("service in", values, "service");
            return (Criteria) this;
        }

        public Criteria andServiceNotIn(List<String> values) {
            addCriterion("service not in", values, "service");
            return (Criteria) this;
        }

        public Criteria andServiceBetween(String value1, String value2) {
            addCriterion("service between", value1, value2, "service");
            return (Criteria) this;
        }

        public Criteria andServiceNotBetween(String value1, String value2) {
            addCriterion("service not between", value1, value2, "service");
            return (Criteria) this;
        }

        public Criteria andBuildDateIsNull() {
            addCriterion("build_date is null");
            return (Criteria) this;
        }

        public Criteria andBuildDateIsNotNull() {
            addCriterion("build_date is not null");
            return (Criteria) this;
        }

        public Criteria andBuildDateEqualTo(Date value) {
            addCriterion("build_date =", value, "buildDate");
            return (Criteria) this;
        }

        public Criteria andBuildDateNotEqualTo(Date value) {
            addCriterion("build_date <>", value, "buildDate");
            return (Criteria) this;
        }

        public Criteria andBuildDateGreaterThan(Date value) {
            addCriterion("build_date >", value, "buildDate");
            return (Criteria) this;
        }

        public Criteria andBuildDateGreaterThanOrEqualTo(Date value) {
            addCriterion("build_date >=", value, "buildDate");
            return (Criteria) this;
        }

        public Criteria andBuildDateLessThan(Date value) {
            addCriterion("build_date <", value, "buildDate");
            return (Criteria) this;
        }

        public Criteria andBuildDateLessThanOrEqualTo(Date value) {
            addCriterion("build_date <=", value, "buildDate");
            return (Criteria) this;
        }

        public Criteria andBuildDateIn(List<Date> values) {
            addCriterion("build_date in", values, "buildDate");
            return (Criteria) this;
        }

        public Criteria andBuildDateNotIn(List<Date> values) {
            addCriterion("build_date not in", values, "buildDate");
            return (Criteria) this;
        }

        public Criteria andBuildDateBetween(Date value1, Date value2) {
            addCriterion("build_date between", value1, value2, "buildDate");
            return (Criteria) this;
        }

        public Criteria andBuildDateNotBetween(Date value1, Date value2) {
            addCriterion("build_date not between", value1, value2, "buildDate");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}