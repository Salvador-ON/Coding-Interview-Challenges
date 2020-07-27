# @param {Integer[]} salary
# @return {Float}
def average(salary)
    salary_count = (salary.length - 2)
    salarys_sum = salary.sum - salary.max - salary.min
    average_salaray = salarys_sum /salary_count.to_f
end
